module Halo
  module Profile
    module Halo5
      class PlayerSpartanImage < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(player, options = {})
          get_data("#{@endpoint}/#{player}/spartan", options)
        end

      end
    end
  end
end
