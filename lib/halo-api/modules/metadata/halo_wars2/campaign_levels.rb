module Halo
  module Metadata
    module HaloWars2
      class CampaignLevels < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/campaign-levels", options)
        end

      end
    end
  end
end
