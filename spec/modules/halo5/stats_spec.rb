# frozen_string_literal: true

describe Halo::Halo5::Stats do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
      config.redis   = nil
    end
  end

  describe 'company_commendations request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/company_commendations') { client.stats.company_commendations(' a34823e3-1772-4675-9731-28de0db87df5') }
    end

    it 'returns the company commendations data' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'company request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/company') { client.stats.company(' a34823e3-1772-4675-9731-28de0db87df5') }
    end

    it 'returns the company data' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Creator'
    end
  end

  describe 'match_events request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/match_events') { client.stats.match_events('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    it 'returns the match events' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameEvents'
    end
  end

  describe 'match_result_arena request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/match_result_arena') { client.stats.match_result_arena('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    it 'returns the match result arena' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameBaseVariantId'
    end
  end

  describe 'match_result_campaign request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/match_result_campaign') { client.stats.match_result_campaign('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    it 'returns the match result campaign' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameBaseVariantId'
    end
  end

  describe 'match_result_custom request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/match_result_custom') { client.stats.match_result_custom('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    it 'returns the match result custom' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameBaseVariantId'
    end
  end

  describe 'match_result_warzone request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/match_result_warzone') { client.stats.match_result_warzone('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    it 'returns the match result warzone' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'GameBaseVariantId'
    end
  end

  describe 'player_commendations request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/player_commendations') { client.stats.player_commendations('xarly bovi') }
    end

    it 'returns the player commendations' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'player_match_history request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/player_match_history') { client.stats.player_match_history('xarly bovi') }
    end

    it 'returns the player match history' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Results'
    end
  end

  describe 'psr_arena request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/psr_arena') { client.stats.psr_arena('xarly bovi') }
    end

    it 'returns the player psr arena' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'psr_campaign request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/psr_campaign') { client.stats.psr_campaign('xarly bovi') }
    end

    it 'returns the player psr campaign' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'psr_custom request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/psr_custom') { client.stats.psr_custom('xarly bovi') }
    end

    it 'returns the player psr custom' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'psr_warzone request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/psr_warzone') { client.stats.psr_warzone('xarly bovi') }
    end

    it 'returns the player psr warzone' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'pc_match_result_custom request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/pc_match_result_custom') { client.stats.pc_match_result_custom('dd53912c-5ca3-4167-900a-10a78a7c94b7') }
    end

    xit 'returns the player pc match result custom' do
      expect(response).to be_kind_of(Hash)
    end
  end

  describe 'pc_player_match_history request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/pc_player_match_history') { client.stats.pc_player_match_history('xarly bovi') }
    end

    it 'returns the pc player match history' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end

  describe 'pc_psr_custom request' do
    let(:response) do
      VCR.use_cassette('halo5/stats/pc_psr_custom') { client.stats.pc_psr_custom('xarly bovi') }
    end

    it 'returns the players pc psr custom data' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'Links'
    end
  end
end
