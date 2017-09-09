module Halo
  module Profile
    module Halo5
      class PlayerEmblemImage < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/#{player}/emblem", options)
        end

      end
    end
  end
end
