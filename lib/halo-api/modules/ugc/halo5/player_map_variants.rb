module Halo
  module Ugc
    module Halo5
      class PlayerMapVariants < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/#{player}/mapvariants", options)
        end

      end
    end
  end
end
