module Halo
  module Stats
    module HaloWars2
      class PlayerSeasonStatsSummary < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, season_id, options = {})
          get_data("/players/#{player}/stats/seasons/#{season_id}", options)
        end

      end
    end
  end
end
