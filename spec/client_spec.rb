require 'spec_helper'

describe Halo::Client do

  before(:all) do
    Halo.configure do |config|
      config.api_key = ENV['HALO_API_KEY']
      config.region  = ENV['HALO_REGION']
    end
    @client = Halo::Client.new
  end

  it 'should pass the api key to the Halo client' do
    expect(@client.api_key).to eq(ENV['HALO_API_KEY'])
  end

  it 'should pass the region to the Halo client' do
    expect(@client.region).to eq(ENV['HALO_REGION'])
  end

  it { should respond_to(:halo5_metadata) }
  it { should respond_to(:halo5_profile) }
  it { should respond_to(:halo5_stats) }
  it { should respond_to(:halo5_ugc) }
  it { should respond_to(:halo_wars2_metadata) }
  it { should respond_to(:halo_wars2_stats) }

  describe '.campaign_missions' do
    let(:result) { @client.halo5_metadata.campaign_missions }

    it 'returns a list of missions' do
      expect(result).to_not be_nil
      expect(result.first).to have_key 'contentId'
    end

  end

end