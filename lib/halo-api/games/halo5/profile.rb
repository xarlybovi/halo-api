module Halo
  module Halo5
    class Profile < Halo::APIResponse

      def initialize(options = {})
        @endpoint = '/profile/h5/profiles'
        super(options)
      end

      def player(player, options = {})
        get_data("#{@endpoint}/#{player}/appearance", options)
      end

      # TODO
      def player_emblem; end

      def player_spartan_image; end

    end
  end
end