module Halo
  module Metadata
    module Halo5
      class Vehicles < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/vehicles', options)
        end

      end
    end
  end
end
