module Halo
  module Profile
    module Halo5
      class PlayerSpartanImage < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/#{player}/spartan", options)
        end

      end
    end
  end
end
