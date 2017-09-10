module Halo
  module Metadata
    module Halo5
      class FlexibleStats < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/flexible-stats', options)
        end

      end
    end
  end
end
