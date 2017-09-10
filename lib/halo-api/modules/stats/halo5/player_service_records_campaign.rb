module Halo
  module Stats
    module Halo5
      class PlayerServiceRecordsCampaign < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data('/servicerecords/campaign', options.merge(players: players))
        end

      end
    end
  end
end
