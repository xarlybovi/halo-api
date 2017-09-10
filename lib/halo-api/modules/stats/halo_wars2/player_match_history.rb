module Halo
  module Stats
    module HaloWars2
      class PlayerMatchHistory < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/players/#{player}/matches", options)
        end

      end
    end
  end
end
