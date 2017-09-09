module Halo
  module Stats
    module Halo5
      class PlayerMatchHistory < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/players/#{player}/matches", options)
        end

      end
    end
  end
end
