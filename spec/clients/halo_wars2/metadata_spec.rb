require 'spec_helper'
require 'pry'


describe Halo::Clients::HaloWars2MetadataClient do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo.hw2_metadata
  end

  it { should respond_to(:campaign_levels) }
  it { should respond_to(:campaign_logs) }
  it { should respond_to(:card_keywords) }
  it { should respond_to(:cards) }
  it { should respond_to(:csr_designations) }
  it { should respond_to(:difficulties) }
  it { should respond_to(:game_object_categories) }
  it { should respond_to(:game_objects) }
  it { should respond_to(:leader_powers) }
  it { should respond_to(:leaders) }
  it { should respond_to(:maps) }
  it { should respond_to(:packs) }
  it { should respond_to(:playlists) }
  it { should respond_to(:seasons) }
  it { should respond_to(:spartan_ranks) }
  it { should respond_to(:techs) }

  # Request test
  describe 'Campaign Levels' do
    let(:result) { @client.campaign_levels.all }

    it 'returns the paging' do
      expect(result).to_not be_nil
      expect(result.first.last).to have_key 'TotalCount'
    end
  end

  # binding.pry
end


