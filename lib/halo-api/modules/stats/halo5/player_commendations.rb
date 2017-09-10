module Halo
  module Stats
    module Halo5
      class PlayerCommendations < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("/players/#{player}/commendations", options)
        end

      end
    end
  end
end
