module Halo
  module Stats
    module HaloWars2
      class PlayerPlaylistRatings < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(playlist_id, players, options = {})
          get_data("#{@endpoint}/playlist/#{playlist_id}/rating", options.merge(players: players))
        end

      end
    end
  end
end
