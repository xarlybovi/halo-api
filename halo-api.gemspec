# frozen_string_literal: true

require_relative 'lib/halo-api/version'

Gem::Specification.new do |spec|
  spec.name          = 'halo-api'
  spec.version       = Halo::VERSION
  spec.authors       = ['Carlos Ruiz']
  spec.email         = ['xarlybovi@gmail.com']

  spec.summary       = 'Wrapper for Halo Public API.'
  spec.description   = 'Wrapper for Halo Public API (BETA). https://developer.haloapi.com'
  spec.homepage      = 'https://github.com/xarlybovi/halo-api.git'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # This gem will work with 2.6.8 or greater
  spec.required_ruby_version = '>= 2.5.8'

  spec.add_runtime_dependency 'addressable', '~> 2.8', '>= 2.8.0'
  spec.add_runtime_dependency 'httparty', '~> 0.18.1'
  spec.add_runtime_dependency 'redis', '~> 4.3'

  spec.add_development_dependency 'bundler', '~> 2.2.24'
  spec.add_development_dependency 'codecov', '~> 0.5.2'
  spec.add_development_dependency 'dotenv', '~> 2.2', '>= 2.2.1'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
  spec.add_development_dependency 'rubocop', '~> 1.18'
  spec.add_development_dependency 'rubocop-performance', '~> 1.11'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.4.0'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.13'
end
