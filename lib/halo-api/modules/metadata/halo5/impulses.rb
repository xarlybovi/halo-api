module Halo
  module Metadata
    module Halo5
      class Impulses < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/impulses', options)
        end

      end
    end
  end
end
