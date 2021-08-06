# frozen_string_literal: true

describe Halo::HaloWars2::Stats do
  subject(:client) { Halo.halo_wars2 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
      config.redis   = nil
    end
  end

  describe 'leaderboard_player_csr request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/leaderboard_player_csr') { client.stats.leaderboard_player_csr('123456', '123456') }
    end

    xit 'returns the leaderboard player csr' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameEvents'
    end
  end

  describe 'match_events request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/match_events') { client.stats.match_events('99827423-b70e-457f-9f87-c81b38ca9061') }
    end

    it 'returns the match events' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameEvents'
    end
  end

  describe 'match_result request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/match_result') { client.stats.match_result('99827423-b70e-457f-9f87-c81b38ca9061') }
    end

    it 'returns the match result' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameMode'
    end
  end

  describe 'player_campaign_progress request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_campaign_progress') { client.stats.player_campaign_progress('xarly bovi') }
    end

    it 'returns the player campaign progress' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Levels'
    end
  end

  describe 'player_match_history request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_match_history') { client.stats.player_match_history('xarly bovi') }
    end

    it 'returns the player match history' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Results'
    end
  end

  describe 'player_playlist_ratings request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_playlist_ratings') { client.stats.player_playlist_ratings('282fc197-7bf1-4865-81ec-a312d07567b6', 'xarly bovi') }
    end

    it 'returns the players playlist ratings' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'player_season_stats_summary request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_season_stats_summary') { client.stats.player_season_stats_summary('xarly bovi', '123456') }
    end

    xit 'returns the player season stats summary' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'CustomSummary'
    end
  end

  describe 'player_stats_summary request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_stats_summary') { client.stats.player_stats_summary('xarly bovi') }
    end

    it 'returns the player stats summary' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'CustomSummary'
    end
  end

  describe 'player_xp request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/player_xp') { client.stats.player_xp('xarly bovi') }
    end

    it 'returns a list of players xp' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Results'
    end
  end
end
