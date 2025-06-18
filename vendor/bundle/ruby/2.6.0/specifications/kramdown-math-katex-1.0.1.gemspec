# -*- encoding: utf-8 -*-
# stub: kramdown-math-katex 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "kramdown-math-katex".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Leitner".freeze]
  s.date = "2019-01-31"
  s.email = "t_leitner@gmx.at".freeze
  s.homepage = "https://github.com/kramdown/math-katex".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "kramdown-math-katex uses KaTeX to convert math elements to HTML on the server side".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<kramdown>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<katex>.freeze, ["~> 0.4"])
    else
      s.add_dependency(%q<kramdown>.freeze, ["~> 2.0"])
      s.add_dependency(%q<katex>.freeze, ["~> 0.4"])
    end
  else
    s.add_dependency(%q<kramdown>.freeze, ["~> 2.0"])
    s.add_dependency(%q<katex>.freeze, ["~> 0.4"])
  end
end
