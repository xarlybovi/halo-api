require 'pry'

describe Halo::Clients::Halo5UgcClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.h5_ugc
  end

  it { should respond_to(:player_game_variant) }
  it { should respond_to(:player_game_variants) }
  it { should respond_to(:player_map_variant) }
  it { should respond_to(:player_map_variants) }

  # binding.pry
end