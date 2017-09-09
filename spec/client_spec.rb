require 'spec_helper'
require 'pry'

describe Halo::Client do

  before(:each) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo::Client.new
  end

  it 'should pass the api key to the Halo client' do
    expect(@client.api_key).to eq(ENV['HALO_API_KEY'])
  end

  it 'should pass the region to the Halo client' do
    expect(@client.region).to eq(ENV['HALO_REGION'])
  end

  # binding.pry
end