# frozen_string_literal: true

describe Halo::HaloWars2::Metadata do
  subject(:client) { Halo.halo_wars2 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
      config.redis   = nil
    end
  end

  describe 'campaign_levels request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/campaign_levels') { client.metadata.campaign_levels }
    end

    it 'returns a list of all campaign levels' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'campaign_logs request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/campaign_logs') { client.metadata.campaign_logs }
    end

    it 'returns a list of all campaign logs' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'card_keywords request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/card_keywords') { client.metadata.card_keywords }
    end

    it 'returns a list of all card keywords' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'cards request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/cards') { client.metadata.cards }
    end

    it 'returns a list of all cards' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'csr_designations request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/csr_designations') { client.metadata.csr_designations }
    end

    it 'returns a list of all csr designations' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'difficulties request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/difficulties') { client.metadata.difficulties }
    end

    it 'returns a list of all difficulties' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'game_object_categories request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/game_object_categories') { client.metadata.game_object_categories }
    end

    it 'returns a list of all game object categories' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'game_objects request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/game_objects') { client.metadata.game_objects }
    end

    it 'returns a list of all game objects' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'leader_powers request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/leader_powers') { client.metadata.leader_powers }
    end

    it 'returns a list of all leader powers' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'leaders request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/leaders') { client.metadata.leaders }
    end

    it 'returns a list of all leaders' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'maps request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/maps') { client.metadata.maps }
    end

    it 'returns a list of all maps' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'packs request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/packs') { client.metadata.packs }
    end

    it 'returns a list of all packs' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'playlists request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/playlists') { client.metadata.playlists }
    end

    it 'returns a list of all playlists' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'seasons request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/seasons') { client.metadata.seasons }
    end

    it 'returns a list of all seasons' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'spartan_ranks request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/spartan_ranks') { client.metadata.spartan_ranks }
    end

    it 'returns a list of all spartan ranks' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end

  describe 'techs request' do
    let(:response) do
      VCR.use_cassette('halo_wars2/techs') { client.metadata.techs }
    end

    it 'returns a list of all techs' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'ContentItems'
    end
  end
end
