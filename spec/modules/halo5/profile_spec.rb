# frozen_string_literal: true

describe Halo::Halo5::Profile do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
  end

  # it { should respond_to(:player_appearance) }
  # it { should respond_to(:player_emblem_image) }
  # it { should respond_to(:player_spartan_image) }

  describe 'Profile sample request' do
    let(:result) { client.profile(player: 'xarly bovi').player_appearance }

    it 'returns the player appearance info' do
      expect(result).not_to be_nil
      expect(result).to have_key 'Gamertag'
    end
  end

  # binding.pry
end
