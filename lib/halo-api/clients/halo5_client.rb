require 'halo-api/client'

require 'halo-api/modules/halo5/metadata'
require 'halo-api/modules/halo5/profile'
require 'halo-api/modules/halo5/stats'
require 'halo-api/modules/halo5/ugc'


module Halo
  module Clients

    # Halo 5 Client
    class Halo5Client < Client

      def initialize(options = {})
        super(options)
      end

      def metadata(options = {})
        merge_options_and_return_obj(options, Halo::Halo5::Metadata)
      end

      def profile(options = {})
        merge_options_and_return_obj(options, Halo::Halo5::Profile)
      end

      def stats(options = {})
        merge_options_and_return_obj(options, Halo::Halo5::Stats)
      end

      def ugc(options = {})
        merge_options_and_return_obj(options, Halo::Halo5::Ugc)
      end

    end
  end
end
