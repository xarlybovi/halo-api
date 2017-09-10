module Halo
  module Metadata
    module HaloWars2
      class CsrDesignations < Halo::APIResponse

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
