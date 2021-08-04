# frozen_string_literal: true

describe Halo::Halo5::Ugc do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region = ENV['HALO_REGION']
      config.redis = nil
    end
  end

  describe 'player_game_variant request' do
    let(:response) do
      VCR.use_cassette('halo5/ugc/player_game_variant') { client.ugc(player: 'xarly bovi').player_game_variant('2a84b063-b199-4969-8f3d-23b5a0c5d966') }
    end

    xit 'returns the player game variant info' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'activityId'
    end
  end

  describe 'player_game_variants request' do
    let(:response) do
      VCR.use_cassette('halo5/ugc/player_game_variants') { client.ugc(player: 'xarly bovi').player_game_variants }
    end

    it 'returns the player game variants info' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'activityId'
    end
  end

  describe 'player_map_variant request' do
    let(:response) do
      VCR.use_cassette('halo5/ugc/player_map_variant') { client.ugc(player: 'xarly bovi').player_map_variant('2a84b063-b199-4969-8f3d-23b5a0c5d966') }
    end

    xit 'returns the player map variant info' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'activityId'
    end
  end

  describe 'player_map_variants request' do
    let(:response) do
      VCR.use_cassette('halo5/ugc/player_map_variants') { client.ugc(player: 'xarly bovi').player_map_variants }
    end

    it 'returns the player player_map_variants info' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'activityId'
    end
  end
end
