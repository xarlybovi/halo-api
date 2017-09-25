require 'bundler/setup'
require 'coveralls'
require 'dotenv'
require 'pry'

require 'halo-api'

Coveralls.wear!

Dotenv.load('.env')

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
