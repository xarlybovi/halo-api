require 'halo-api/version'
require 'halo-api/configuration'
require 'halo-api/client'
require 'halo-api/api_response'

require 'halo-api/modules/metadata/halo5_metadata_client'
require 'halo-api/modules/profile/halo5_profile_client'
require 'halo-api/modules/stats/halo5_stats_client'
require 'halo-api/modules/ugc/halo5_ugc_client'


module Halo
  extend Configuration

  class << self
    def h5_metadata(options = {})
      Halo::Metadata::Halo5MetadataClient.new(options)
    end

    def h5_profile(options = {})
      Halo::Profile::Halo5ProfileClient.new(options)
    end

    def h5_stats(options = {})
      Halo::Stats::Halo5StatsClient.new(options)
    end

    def h5_ugc(options = {})
      Halo::Ugc::Halo5UgcClient.new(options)
    end
  end

end