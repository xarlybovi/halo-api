module Halo
  module Stats
    module Halo5
      class PcPlayerMatchHistory < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("pc/players/#{player}/matches", options)
        end

      end
    end
  end
end
