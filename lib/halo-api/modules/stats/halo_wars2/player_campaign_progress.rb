module Halo
  module Stats
    module HaloWars2
      class PlayerCampaignProgress < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/players/#{player}/campaign-progress", options)
        end

      end
    end
  end
end
