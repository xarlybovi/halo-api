require 'pry'

describe Halo::Halo5::Ugc do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.halo5
  end

  it { should respond_to(:player_game_variant) }
  it { should respond_to(:player_game_variants) }
  it { should respond_to(:player_map_variant) }
  it { should respond_to(:player_map_variants) }

  # describe 'Ugc sample request' do
  #   let(:result) { @client.ugc(player: 'xarly bovi').player_game_variants }
  #
  #   it 'returns the player game variants' do
  #     expect(result).to_not be_nil
  #     expect(result).to have_key 'Results'
  #   end
  # end

  # binding.pry
end