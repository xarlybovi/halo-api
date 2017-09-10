module Halo
  module Metadata
    module Halo5
      class CsrDesignations < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/csr-designations", options)
        end

      end
    end
  end
end
