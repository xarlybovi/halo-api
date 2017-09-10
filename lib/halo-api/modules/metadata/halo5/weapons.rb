module Halo
  module Metadata
    module Halo5
      class Weapons < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/weapons', options)
        end

      end
    end
  end
end
