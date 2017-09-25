describe Halo::Halo5::Profile do

  before(:each) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.halo5
  end

  # it { should respond_to(:player_appearance) }
  # it { should respond_to(:player_emblem_image) }
  # it { should respond_to(:player_spartan_image) }

  describe 'Profile sample request' do
    let(:result) { @client.profile(player: 'xarly bovi').player_appearance }

    it 'returns the player appearance info' do
      expect(result).to_not be_nil
      expect(result).to have_key 'Gamertag'
    end
  end

  # binding.pry
end


