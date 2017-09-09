module Halo
  module Metadata
    module Halo5
      class GameBaseVariants < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/game-base-variants", options)
        end

      end
    end
  end
end
