# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'halo-api/version'

Gem::Specification.new do |spec|
  spec.name          = 'halo-api'
  spec.version       = Halo::VERSION
  spec.authors       = ['Carlos Ruiz']
  spec.email         = ['xarlybovi@gmail.com']

  spec.summary       = 'Wrapper for Halo Public API.'
  spec.description   = 'Wrapper for Halo Public API (BETA). https://developer.haloapi.com'
  spec.homepage      = 'https://github.com/xarlybovi/halo-api.git'
  spec.license       = 'MIT'
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'httparty', '~> 0.15.6'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'dotenv', '~> 2.2', '>= 2.2.1'
  spec.add_development_dependency 'rubocop', '~> 0.49.1'
  spec.add_development_dependency 'coveralls', '~> 0.8.21'
  spec.add_development_dependency 'pry', '~> 0.10.3'
end
