module Halo
  module Metadata
    module Halo5
      class CampaignMissions < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/campaign-missions', options)
        end

      end
    end
  end
end
