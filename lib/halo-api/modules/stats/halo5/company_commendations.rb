module Halo
  module Stats
    module Halo5
      class CompanyCommendations < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(company_id, options = {})
          get_data("/companies/#{company_id}/commendations", options)
        end

      end
    end
  end
end
