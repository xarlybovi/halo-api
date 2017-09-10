require 'pry'


describe Halo::Clients::Halo5Client do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.halo5
  end

  it { should respond_to(:metadata) }
  it { should respond_to(:profile) }
  it { should respond_to(:stats) }
  it { should respond_to(:ugc) }

  # binding.pry
end


