# -*- encoding: utf-8 -*-
# stub: leaflet-markercluster-rails 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "leaflet-markercluster-rails".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Stephen Pike".freeze]
  s.date = "2014-03-03"
  s.description = "Cluster markers to improve performance of leaflet rendering with large sets.".freeze
  s.email = ["steve@scpike.net".freeze]
  s.homepage = "https://github.com/scpike/leaflet-markercluster-rails".freeze
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Rails engine for the Leaflet.markercluster code".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
  end
end
