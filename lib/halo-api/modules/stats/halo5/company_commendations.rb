module Halo
  module Stats
    module Halo5
      class CompanyCommendations < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(company_id, options = {})
          get_data("#{@endpoint}/companies/#{company_id}/commendations", options)
        end

      end
    end
  end
end
