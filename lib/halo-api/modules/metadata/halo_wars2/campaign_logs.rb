module Halo
  module Metadata
    module HaloWars2
      class CampaignLogs < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/campaign-logs", options)
        end

      end
    end
  end
end
