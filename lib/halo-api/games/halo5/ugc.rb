module Halo
  module Halo5
    class Ugc < Halo::APIResponse

      def initialize(options = {})
        @endpoint = '/ugc/h5'
        super(options)
      end

      def player_game_variant(player, variant, options = {})
        get_data("#{@endpoint}/players/#{player}/gamevariants/#{variant}", options)
      end

      def player_game_variants(player, options = {})
        get_data("#{@endpoint}/players/#{player}/gamevariants", options)
      end

      def player_map_variant(player, variant, options = {})
        get_data("#{@endpoint}/players/#{player}/mapvariants/#{variant}", options)
      end

      def player_map_variants(player, options = {})
        get_data("#{@endpoint}/players/#{player}/mapvariants", options)
      end

    end
  end
end