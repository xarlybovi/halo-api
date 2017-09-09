require 'halo-api/client'

require 'halo-api/modules/profile/halo5/player_appearance'
require 'halo-api/modules/profile/halo5/player_emblem_image'
require 'halo-api/modules/profile/halo5/player_spartan_image'


module Halo
  module Profile

    # Halo 5 Profile endpoints
    class Halo5ProfileClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/profile/h5/profiles' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def player_appearance(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerAppearance)
      end

      def player_emblem_image(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerEmblemImage)
      end

      def player_spartan_image(options = {})
        merge_options_and_return_obj(options, Halo::Profile::Halo5::PlayerSpartanImage)
      end

    end

  end
end
