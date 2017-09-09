require 'halo-api/version'
require 'halo-api/api_response'
require 'httparty'


module Halo
  class Client
    include HTTParty

    attr_accessor(*Configuration::OPTIONS)

    def initialize(options = {})
      @api_key = options[:api_key]
      @region = options[:region]
      @endpoint = options[:endpoint]

      options = Halo.options.merge(options)

      Halo::Configuration::OPTIONS.each do |key|
        send("#{key}=", options[key])
      end
    end

    def endpoint
      raise 'Invalid API Endpoint' if @endpoint.nil?
      @endpoint
    end

    def get(path, params = {})
      make_request :get, path, params
    end

    def make_request(verb, path, params = {})
      options = {}
      headers = {
        'Ocp-Apim-Subscription-Key': @api_key,
        'Accept-Language': @region
      }

      url = "https://www.haloapi.com#{path}"

      options[:headers] = headers unless headers.empty?
      options[:query]   = params unless params.empty?

      self.class.send(verb, url, options)
    end


    private

    def merge_options_and_return_obj(options, obj)
      opts = options.merge(client: self)
      obj.new(opts)
    end
  end
end