require 'halo-api/version'
require 'halo-api/api_response'
require 'httparty'

require 'halo-api/games/halo5/metadata'
require 'halo-api/games/halo5/profile'
require 'halo-api/games/halo5/stats'
require 'halo-api/games/halo5/ugc'
require 'halo-api/games/halo_wars2/metadata'
require 'halo-api/games/halo_wars2/stats'

module Halo
  class Client
    include HTTParty
    include Halo::Halo5
    include Halo::HaloWars2

    attr_accessor(*Configuration::OPTIONS)

    def initialize(options = {})
      @api_key = options[:api_key]
      @region = options[:region]

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

      # if @api_key
      #   options[:query] ||= {}
      #   options[:query].merge!({ :apikey => @api_key })
      # end

      self.class.send(verb, url, options)
    end

    # Halo 5
    def halo5_metadata(options = {})
      merge_options_and_return_obj(options, Halo::Halo5::Metadata)
    end

    def halo5_profile(options = {})
      merge_options_and_return_obj(options, Halo::Halo5::Profile)
    end

    def halo5_stats(options = {})
      merge_options_and_return_obj(options, Halo::Halo5::Stats)
    end

    def halo5_ugc(options = {})
      merge_options_and_return_obj(options, Halo::Halo5::Ugc)
    end

    # Halo Wars 2
    def halo_wars2_metadata(options = {})
      merge_options_and_return_obj(options, Halo::HaloWars2::Metadata)
    end

    def halo_wars2_stats(options = {})
      merge_options_and_return_obj(options, Halo::HaloWars2::Stats)
    end


    private

    def merge_options_and_return_obj(options, obj)
      opts = options.merge(client: self)
      obj.new(opts)
    end
  end
end