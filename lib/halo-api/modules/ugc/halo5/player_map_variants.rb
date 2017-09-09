module Halo
  module Ugc
    module Halo5
      class PlayerMapVariants < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/#{player}/mapvariants", options)
        end

      end
    end
  end
end
