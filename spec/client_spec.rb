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
  end
end
