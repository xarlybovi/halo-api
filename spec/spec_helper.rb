# frozen_string_literal: true

require 'simplecov'
require 'bundler/setup'
require 'dotenv'
require 'pry'
require 'vcr'

SimpleCov.start do
  track_files '{lib}/**/*.rb'
  add_filter 'spec/'
  add_filter 'lib/halo-api/version'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
  config.ignore_localhost = true
  config.configure_rspec_metadata!
  config.filter_sensitive_data('<HALO_API_KEY>') { ENV['HALO_API_KEY'] }
end

Dotenv.load('.env')

require 'halo-api'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # config.order = :random
end
