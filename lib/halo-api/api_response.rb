require 'httparty'
require 'addressable/uri'

module Halo
  class InvalidCacheStore < StandardError; end

  class APIResponse
    include HTTParty

    def initialize(options = {})
      client       = options.delete(:client)
      @api_key     = client.api_key
      @region      = client.region
      @cache_store = client.cache_store || {}

      raise InvalidCacheStore if cached? && !redis_store.is_a?(Redis)

      self.class.base_uri 'https://www.haloapi.com'
    end

    def get_data(path, options = {})
      if cached?
        result = redis_store.get("#{path}#{options}")
        return JSON.parse(result) if result
      end
      response = perform_uncached_request(:get, path, options)
      redis_store.setex "#{path}#{options}", ttl, response.to_json if cached?
      response
    end

    def perform_uncached_request(verb, path, params = {})
      options = {}
      headers = {
        'Ocp-Apim-Subscription-Key' => @api_key,
        'Accept-Language' => @region
      }

      options[:headers] = headers unless headers.empty?
      options[:query]   = params unless params.empty?

      response = self.class.send(verb, Addressable::URI.encode(path), options)

      response.respond_to?(:parsed_response) ? response.parsed_response : response
    end

    # @return [Redis] returns the cache store
    def redis_store
      @cache_store[:redis]
    end

    # @return [Boolean] true if the request should be cached
    def cached?
      @cache_store[:cached]
    end

    # @return [Integer] the ttl to apply to cached keys
    def ttl
      @cache_store[:ttl]
    end
  end
end