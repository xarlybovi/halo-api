module Halo
  module Stats
    module Halo5
      class Company < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(company_id, options = {})
          get_data("/companies/#{company_id}", options)
        end

      end
    end
  end
end
