# frozen_string_literal: true

require_relative 'host/function_registry'
require_relative 'host/importer_registry'
require_relative 'host/logger_registry'
require_relative 'host/protofier'
require_relative 'host/structifier'
require_relative 'host/value_protofier'

module Sass
  class Embedded
    # The {Host} class.
    #
    # It communicates with {Dispatcher} and handles the host logic.
    class Host
      def initialize(dispatcher)
        @dispatcher = dispatcher
      end

      def compile_request(path:,
                          source:,
                          importer:,
                          load_paths:,
                          syntax:,
                          url:,
                          charset:,
                          source_map:,
                          source_map_include_sources:,
                          style:,
                          functions:,
                          importers:,
                          alert_ascii:,
                          alert_color:,
                          logger:,
                          quiet_deps:,
                          verbose:)
        compile_response = await do
          alert_color = $stderr.tty? if alert_color.nil?

          @function_registry = FunctionRegistry.new(functions, alert_color: alert_color)
          @importer_registry = ImporterRegistry.new(importers, load_paths, alert_color: alert_color)
          @logger_registry = LoggerRegistry.new(logger)

          send_message(compile_request: EmbeddedProtocol::InboundMessage::CompileRequest.new(
            string: unless source.nil?
                      EmbeddedProtocol::InboundMessage::CompileRequest::StringInput.new(
                        source: source,
                        url: url&.to_s,
                        syntax: Protofier.to_proto_syntax(syntax),
                        importer: (@importer_registry.register(importer) unless importer.nil?)
                      )
                    end,
            path: (File.absolute_path(path) unless path.nil?),
            style: Protofier.to_proto_output_style(style),
            charset: charset,
            source_map: source_map,
            source_map_include_sources: source_map_include_sources,
            importers: @importer_registry.importers,
            global_functions: @function_registry.global_functions,
            alert_ascii: alert_ascii,
            alert_color: alert_color,
            quiet_deps: quiet_deps,
            verbose: verbose
          ))
        end

        Protofier.from_proto_compile_response(compile_response)
      end

      def version_request
        version_response = await0 do
          send_message0(version_request: EmbeddedProtocol::InboundMessage::VersionRequest.new(
            id: id
          ))
        end

        "sass-embedded\t#{version_response.implementation_version}"
      end

      def compile_response(message)
        @result = message
        @queue.close
      end

      def version_response(message)
        @result = message
        @queue.close
      end

      def error(message)
        case message
        when EmbeddedProtocol::ProtocolError
          @error = Errno::EPROTO.new(message.message)
          @channel.error(@error)
        else
          @error ||= message
        end
        @queue.close
      end

      def log_event(message)
        @logger_registry.log(message)
      end

      def canonicalize_request(message)
        send_message(canonicalize_response: @importer_registry.canonicalize(message))
      end

      def import_request(message)
        send_message(import_response: @importer_registry.import(message))
      end

      def file_import_request(message)
        send_message(file_import_response: @importer_registry.file_import(message))
      end

      def function_call_request(message)
        send_message(function_call_response: @function_registry.function_call(message))
      end

      def receive_proto(proto)
        @queue.push(proto)
      end

      private

      def await0
        listen do
          yield

          @queue.pop
        end
      end

      def await
        listen do
          yield

          while (proto = @queue.pop)
            outbound_message = EmbeddedProtocol::OutboundMessage.decode(proto)
            oneof = outbound_message.message
            message = outbound_message.public_send(oneof)
            public_send(oneof, message)
          end
        end
      end

      def listen
        @queue = Queue.new
        @channel = @dispatcher.connect(self)

        yield

        raise @error if @error

        @result
      ensure
        @channel&.disconnect
        @queue&.close
      end

      def id
        @channel.id
      end

      def send_message0(...)
        inbound_message = EmbeddedProtocol::InboundMessage.new(...)
        @channel.send_proto(0, inbound_message.to_proto)
      end

      def send_message(...)
        inbound_message = EmbeddedProtocol::InboundMessage.new(...)
        @channel.send_proto(id, inbound_message.to_proto)
      end
    end

    private_constant :Host
  end
end
