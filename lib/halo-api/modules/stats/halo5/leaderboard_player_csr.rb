module Halo
  module Stats
    module Halo5
      class LeaderboardPlayerCsr < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(season_id, playlist_id, options = {})
          get_data("/player-leaderboards/csr/#{season_id}/#{playlist_id}", options)
        end

      end
    end
  end
end
