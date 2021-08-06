# frozen_string_literal: true

describe Halo::Halo5::Metadata do
  subject(:client) { Halo.halo5 }

  before do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
      config.redis   = nil
    end
  end

  describe 'campaign_missions request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/campaign_missions') { client.metadata.campaign_missions }
    end

    it 'returns a list of all campaign missions' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'commendations request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/commendations') { client.metadata.commendations }
    end

    it 'returns a list of all commendations' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'company_commendations request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/company_commendations') { client.metadata.company_commendations }
    end

    it 'returns a list of all company_commendations' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'csr_designations request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/csr_designations') { client.metadata.csr_designations }
    end

    it 'returns a list of all csr_designations' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'enemies request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/enemies') { client.metadata.enemies }
    end

    it 'returns a list of all enemies' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'flexible_stats request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/flexible_stats') { client.metadata.flexible_stats }
    end

    it 'returns a list of all flexible_stats' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'game_base_variants request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/game_base_variants') { client.metadata.game_base_variants }
    end

    it 'returns a list of all game_base_variants' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'game_variant request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/game_variant') { client.metadata.game_variant('1571fdac-e0b4-4ebc-a73a-6e13001b71d3') }
    end

    it 'returns a game_variant' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'contentId'
    end
  end

  describe 'impulses request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/impulses') { client.metadata.impulses }
    end

    it 'returns a list of all impulses' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'map_variant request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/map') { client.metadata.map_variant('c93d708f-f206-11e4-a815-24be05e24f7e') }
    end

    it 'returns a map_variant' do
      expect(response).to be_kind_of(Hash)
      expect(response).to have_key 'id'
    end
  end

  describe 'maps request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/maps') { client.metadata.maps }
    end

    it 'returns a list of all maps' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'medals request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/medals') { client.metadata.medals }
    end

    it 'returns a list of all medals' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'playlists request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/playlists') { client.metadata.playlists }
    end

    it 'returns a list of all playlists' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'requisition request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/requisition') { client.metadata.requisition('123456') }
    end

    xit 'returns a requisition' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'requisition_pack request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/requisition_pack') { client.metadata.requisition_pack('123456') }
    end

    xit 'returns a requisition pack' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'seasons request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/seasons') { client.metadata.seasons }
    end

    it 'returns a list of all seasons' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'skulls request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/skulls') { client.metadata.skulls }
    end

    it 'returns a list of all skulls' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'spartan_ranks request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/spartan_ranks') { client.metadata.spartan_ranks }
    end

    it 'returns a list of all spartan_ranks' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'team_colors request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/team_colors') { client.metadata.team_colors }
    end

    it 'returns a list of all team_colors' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'vehicles request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/vehicles') { client.metadata.vehicles }
    end

    it 'returns a list of all vehicles' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end

  describe 'weapons request' do
    let(:response) do
      VCR.use_cassette('halo5/metadata/weapons') { client.metadata.weapons }
    end

    it 'returns a list of all weapons' do
      expect(response).to be_kind_of(Array)
      expect(response.first).to have_key 'id'
    end
  end
end
