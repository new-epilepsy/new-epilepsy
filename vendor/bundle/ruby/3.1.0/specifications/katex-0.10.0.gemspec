# -*- encoding: utf-8 -*-
# stub: katex 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "katex".freeze
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gleb Mazovetskiy".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-05-01"
  s.description = "Exposes KaTeX server-side renderer to Ruby.".freeze
  s.email = ["glex.spb@gmail.com".freeze]
  s.homepage = "https://github.com/glebm/katex-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Renders KaTeX from Ruby.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<execjs>.freeze, ["~> 2.8"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.81.0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
  else
    s.add_dependency(%q<execjs>.freeze, ["~> 2.8"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.81.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
  end
end
