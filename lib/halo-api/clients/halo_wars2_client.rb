# frozen_string_literal: true

require 'halo-api/client'

require 'halo-api/modules/halo_wars2/metadata'
require 'halo-api/modules/halo_wars2/stats'


module Halo
  module Clients

    # Halo Wars 2 Client
    class HaloWars2Client < Client

      def initialize(options = {})
        super(options)
      end

      def metadata(options = {})
        merge_options_and_return_obj(options, Halo::HaloWars2::Metadata)
      end

      def stats(options = {})
        merge_options_and_return_obj(options, Halo::HaloWars2::Stats)
      end

    end
  end
end
