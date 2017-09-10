module Halo
  module Metadata
    module HaloWars2
      class Cards < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/cards', options)
        end

      end
    end
  end
end
