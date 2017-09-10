module Halo
  module Metadata
    module Halo5
      class Enemies < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/enemies', options)
        end

      end
    end
  end
end
