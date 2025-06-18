# -*- encoding: utf-8 -*-
# stub: jekyll-theme-hydejack 9.1.6 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-theme-hydejack".freeze
  s.version = "9.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/hydecorp/hydejack/issues", "changelog_uri" => "https://hydejack.com/changelog/", "documentation_uri" => "https://hydejack.com/docs/", "github_repo" => "ssh://github.com/hydecorp/hydejack", "homepage_uri" => "https://hydejack.com/", "source_code_uri" => "https://github.com/hydecorp/hydejack/" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Florian Klampfer".freeze]
  s.date = "2022-02-07"
  s.email = ["mail@qwtel.com".freeze]
  s.homepage = "https://hydejack.com/".freeze
  s.licenses = ["GPL-3.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "\"A boutique Jekyll theme for hackers, nerds, and academics\"".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.8", "< 5.0"])
      s.add_runtime_dependency(%q<jekyll-include-cache>.freeze, ["~> 0.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.3.3"])
    else
      s.add_dependency(%q<jekyll>.freeze, [">= 3.8", "< 5.0"])
      s.add_dependency(%q<jekyll-include-cache>.freeze, ["~> 0.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.3.3"])
    end
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.8", "< 5.0"])
    s.add_dependency(%q<jekyll-include-cache>.freeze, ["~> 0.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.3.3"])
  end
end
