require 'halo-api/client'

require 'halo-api/modules/ugc/halo5/player_game_variant'
require 'halo-api/modules/ugc/halo5/player_game_variants'
require 'halo-api/modules/ugc/halo5/player_map_variant'
require 'halo-api/modules/ugc/halo5/player_map_variants'


module Halo
  module Ugc

    # Halo 5 Ugc endpoints
    class Halo5UgcClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/ugc/h5/players' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def player_game_variant(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerGameVariant)
      end

      def player_game_variants(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerGameVariants)
      end

      def player_map_variant(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerMapVariant)
      end

      def player_map_variants(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerMapVariants)
      end
    end

  end
end
