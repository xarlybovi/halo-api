# frozen_string_literal: true

describe Halo::Client do
  describe 'configuration' do
    before do
      Halo.configure do |config|
        config.api_key = ENV['HALO_API_KEY']
        config.region = ENV['HALO_REGION']
      end

      subject { Client.new }
    end

    describe 'api_key' do
      it 'returns the api key' do
        expect(subject.api_key).to eq(ENV['HALO_API_KEY'])
      end

      it 'can be set to a new api key' do
        subject.api_key = ENV['HALO_API_KEY']
        expect(subject.api_key).to eq(ENV['HALO_API_KEY'])
      end
    end

    describe 'region' do
      it 'returns current region' do
        expect(subject.region).to eq(ENV['HALO_REGION'])
      end

      it 'can be set to a new region' do
        subject.region = 'es'
        expect(subject.region).to eq('es')
      end
    end

    describe 'cache' do
      it 'can be set a cache url' do
        subject.redis = ENV['HALO_REDIS']
        expect(subject.redis).to eq(ENV['HALO_REDIS'])
      end
    end
  end

  describe 'caching' do
    before do
      Halo.configure do |config|
        config.api_key = ENV['HALO_API_KEY']
        config.redis = ENV['HALO_REDIS']
      end

      subject { Client.new }
    end

    it 'sets caching if redis is specified in the options' do
      expect(subject.cached?).to be(true)
    end

    it 'default ttl of 30 * 60s' do
      expect(subject.ttl).to eq(30 * 60)
    end

    it 'sets a custom ttl' do
      subject.ttl = 900
      expect(subject.ttl).to eq(900)
    end

    it 'instantiates a redis client if redis is in the options' do
      expect(subject.instance_variable_get(:@redis)).to be_a(Redis)
    end

    it 'check if a request is cached properly' do
      client = Halo.halo5
      # First request creates the cache entry
      response_vcr = VCR.use_cassette('halo5/metadata/campaign_missions') { client.metadata.campaign_missions }
      # Second request get it from redis cache
      response_cached = client.metadata.campaign_missions

      # Get the redis cache entry from the redis client
      redis_cache_entry = client.cache_store[:redis].get('/metadata/h5/metadata/campaign-missions{}en')
      redis_cache_entry = JSON.parse(redis_cache_entry)

      expect(response_vcr).to eq(response_cached)
      expect(response_cached).to eq(redis_cache_entry)
      expect(response_cached).to be_kind_of(Array)
      expect(response_cached.first).to have_key 'id'
    end
  end
end
