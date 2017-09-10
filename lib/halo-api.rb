require 'halo-api/version'
require 'halo-api/configuration'
require 'halo-api/client'
require 'halo-api/api_response'

require 'halo-api/clients/halo5_metadata_client'
require 'halo-api/clients/halo_wars2_metadata_client'
require 'halo-api/clients/halo5_profile_client'
require 'halo-api/clients/halo5_stats_client'
require 'halo-api/clients/halo_wars2_stats_client'
require 'halo-api/clients/halo5_ugc_client'


module Halo
  extend Configuration

  class << self
    # Halo 5 Metadata Client
    def h5_metadata(options = {})
      Halo::Clients::Halo5MetadataClient.new(options)
    end

    # Halo Wars 2 Metadata Client
    def hw2_metadata(options = {})
      Halo::Clients::HaloWars2MetadataClient.new(options)
    end

    # Halo 5 Profile Client
    def h5_profile(options = {})
      Halo::Clients::Halo5ProfileClient.new(options)
    end

    # Halo 5 Stats Client
    def h5_stats(options = {})
      Halo::Clients::Halo5StatsClient.new(options)
    end

    # Halo Wars 2 Stats Client
    def hw2_stats(options = {})
      Halo::Clients::HaloWars2StatsClient.new(options)
    end

    # Halo 5 UGC Client
    def h5_ugc(options = {})
      Halo::Clients::Halo5UgcClient.new(options)
    end
  end

end