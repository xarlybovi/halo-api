require 'spec_helper'
require 'pry'


describe Halo::Clients::Halo5MetadataClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.h5_metadata
  end

  it { should respond_to(:campaign_missions) }
  it { should respond_to(:commendations) }
  it { should respond_to(:csr_designations) }
  it { should respond_to(:enemies) }
  it { should respond_to(:flexible_stats) }
  it { should respond_to(:game_base_variants) }
  it { should respond_to(:game_variant) }
  it { should respond_to(:impulses) }
  it { should respond_to(:map_variant) }
  it { should respond_to(:maps) }
  it { should respond_to(:medals) }
  it { should respond_to(:playlist) }
  it { should respond_to(:requisition) }
  it { should respond_to(:requisition_pack) }
  it { should respond_to(:seasons) }
  it { should respond_to(:skulls) }
  it { should respond_to(:spartan_ranks) }
  it { should respond_to(:team_colors) }
  it { should respond_to(:vehicles) }
  it { should respond_to(:weapons) }

  # Request test
  describe 'Campaign Missions' do
    let(:result) { @client.campaign_missions.all }

    it 'returns a list of all campaign missions' do
      expect(result).to_not be_nil
      expect(result.first).to have_key 'id'
    end
  end

  # binding.pry
end


