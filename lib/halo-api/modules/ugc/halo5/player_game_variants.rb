module Halo
  module Ugc
    module Halo5
      class PlayerGameVariants < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/#{player}/gamevariants", options)
        end

      end
    end
  end
end
