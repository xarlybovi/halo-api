require 'halo-api/version'
require 'halo-api/api_response'
require 'halo-api/configuration'

require 'redis'


module Halo
  class Client
    include HTTParty

    attr_accessor(*Configuration::OPTIONS)

    def initialize(options = {})
      options = Halo.options.merge(options)

      Halo::Configuration::OPTIONS.each do |key|
        send("#{key}=", options[key])
      end

      set_up_cache(options.delete(:redis), options.delete(:ttl))
    end

    def set_up_cache(redis_url, ttl)
      return @cached = false unless redis_url
      @ttl = ttl || Halo::Configuration::DEFAULT_TTL
      @cached = true
      @redis = Redis.new url: redis_url
    end

    # Returns an options hash with cache keys
    # @return [Hash]
    def cache_store
      {
        redis: @redis,
        ttl: @ttl,
        cached: @cached
      }
    end

    # @return [Boolean] true if the request should be cached
    def cached?
      cache_store[:cached]
    end


    private

    def merge_options_and_return_obj(options, obj)
      opts = options.merge(client: self)
      obj.new(opts)
    end
  end
end