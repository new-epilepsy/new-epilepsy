# frozen_string_literal: true

module Sass
  class CLI
    COMMAND = [
      File.absolute_path('dart-sass/src/dart', __dir__),
      File.absolute_path('dart-sass/src/sass.snapshot', __dir__)
    ].freeze
  end

  private_constant :CLI
end
