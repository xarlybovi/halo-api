module Halo
  module Metadata
    module Halo5
      class GameBaseVariants < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/game-base-variants', options)
        end

      end
    end
  end
end
