module Halo
  module Stats
    module HaloWars2
      class PlayerXp < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}/xp", options.merge(players: players))
        end

      end
    end
  end
end
