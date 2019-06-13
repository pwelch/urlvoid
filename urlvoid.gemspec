# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'urlvoid/version'

Gem::Specification.new do |spec|
  spec.name        = 'urlvoid'
  spec.version     = URLVoid::VERSION
  spec.authors     = ['pwelch']
  spec.email       = ['paul@pwelch.net']

  spec.summary     = 'Gem for URLVoid API.'
  spec.description = 'Gem for URLVoid API.'
  spec.homepage    = 'https://github.com/pwelch/urlvoid'
  spec.license     = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'rest-client'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rubocop', '~> 0.71'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end
