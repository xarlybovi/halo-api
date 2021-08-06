# frozen_string_literal: true

module Halo
  module Configuration
    OPTIONS = %i[api_key region redis ttl].freeze

    DEFAULT_API_KEY = nil
    DEFAULT_REGION = 'en'
    DEFAULT_REDIS = 'redis://localhost:6379'
    DEFAULT_TTL = 1800 # 30m

    attr_accessor(*OPTIONS)

    def configure
      yield self
    end

    def options
      OPTIONS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end
  end
end
