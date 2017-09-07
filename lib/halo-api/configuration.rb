module Halo
  module Configuration

    OPTIONS = %i[api_key region].freeze

    DEFAULT_API_KEY = nil
    DEFAULT_REGION = :en

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