module Halo
  module Metadata
    module Halo5
      class CampaignMissions < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/campaign-missions", options)
        end

      end
    end
  end
end
