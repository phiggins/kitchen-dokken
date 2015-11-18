# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/dokken_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-dokken'
  spec.version       = Kitchen::Driver::DOKKEN_VERSION
  spec.authors       = ['Sean OMeara']
  spec.email         = ['sean@chef.io']
  spec.description   = 'A Test Kitchen Driver for Dokken'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '~> 1.4'
end
