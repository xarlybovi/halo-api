module Halo
  module Halo5
    class Ugc < APIResponse

      def initialize(options = {})
        @player = options.delete(:player)
        @endpoint = "/ugc/h5/players/#{@player}"

        super(options)
      end

      def player_game_variant(variant, options = {})
        get_data("#{@endpoint}gamevariants/#{variant}", options)
      end

      def player_game_variants(options = {})
        get_data("#{@endpoint}/gamevariants", options)
      end

      def player_map_variant(variant, options = {})
        get_data("#{@endpoint}/mapvariants/#{variant}", options)
      end

      def player_map_variants(options = {})
        get_data("#{@endpoint}/mapvariants", options)
      end

    end
  end
end
