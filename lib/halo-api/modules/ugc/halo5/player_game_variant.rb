module Halo
  module Ugc
    module Halo5
      class PlayerGameVariant < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, variant, options = {})
          get_data("#{@endpoint}/#{player}/gamevariants/#{variant}", options)
        end

      end
    end
  end
end
