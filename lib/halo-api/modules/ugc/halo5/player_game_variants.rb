module Halo
  module Ugc
    module Halo5
      class PlayerGameVariants < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/#{player}/gamevariants", options)
        end

      end
    end
  end
end
