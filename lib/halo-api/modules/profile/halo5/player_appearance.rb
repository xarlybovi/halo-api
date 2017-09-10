module Halo
  module Profile
    module Halo5
      class PlayerAppearance < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/#{player}/appearance", options)
        end

      end
    end
  end
end
