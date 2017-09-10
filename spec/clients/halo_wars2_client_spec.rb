require 'pry'


describe Halo::Clients::HaloWars2Client do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.halo_wars2
  end

  it { should respond_to(:metadata) }
  it { should respond_to(:stats) }

  # binding.pry
end


