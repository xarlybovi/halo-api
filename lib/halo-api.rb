# frozen_string_literal: true

require 'halo-api/version'
require 'halo-api/configuration'
require 'halo-api/client'
require 'halo-api/api_response'

require 'halo-api/clients/halo5_client'
require 'halo-api/clients/halo_wars2_client'


module Halo
  extend Configuration

  class << self

    def halo5(options = {})
      Halo::Clients::Halo5Client.new(options)
    end

    def halo_wars2(options = {})
      Halo::Clients::HaloWars2Client.new(options)
    end

  end
end