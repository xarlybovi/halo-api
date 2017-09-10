module Halo
  module Ugc
    module Halo5
      class PlayerMapVariant < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, variant, options = {})
          get_data("#{@endpoint}/#{player}/mapvariants/#{variant}", options)
        end

      end
    end
  end
end
