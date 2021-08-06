# frozen_string_literal: true

describe Halo::Halo5::Profile do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
      config.redis   = nil
    end
  end

  describe 'player_appearance request' do
    let(:response) do
      VCR.use_cassette('halo5/profile/player_appearance') { client.profile(player: 'xarly bovi').player_appearance }
    end

    it 'returns the player appearance info' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Gamertag'
    end
  end

  # TODO: fix save encoded string to redis
  describe 'player_emblem_image request' do
    let(:response) do
      VCR.use_cassette('halo5/profile/player_emblem_image') { client.profile(player: 'xarly bovi').player_emblem_image }
    end

    it 'returns the player_emblem_image' do
      expect(response).to be_kind_of(String)
    end
  end

  # TODO: fix save encoded string to redis
  describe 'player_spartan_image request' do
    let(:response) do
      VCR.use_cassette('halo5/profile/player_spartan_image') { client.profile(player: 'xarly bovi').player_spartan_image }
    end

    it 'returns the player_spartan_image' do
      expect(response).to be_kind_of(String)
    end
  end
end
