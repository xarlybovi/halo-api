require 'pry'


describe Halo::Clients::Halo5ProfileClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.h5_profile
  end

  it { should respond_to(:player_appearance) }
  it { should respond_to(:player_emblem_image) }
  it { should respond_to(:player_spartan_image) }

  # Request test
  describe 'Player appearance' do
    let(:result) { @client.player_appearance.find('xarly bovi') }

    it 'returns the player appearance info' do
      expect(result).to_not be_nil
      expect(result).to have_key 'Gamertag'
    end
  end

  # binding.pry
end


