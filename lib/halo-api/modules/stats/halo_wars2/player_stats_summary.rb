module Halo
  module Stats
    module HaloWars2
      class PlayerStatsSummary < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/players/#{player}/stats", options)
        end

      end
    end
  end
end
