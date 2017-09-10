module Halo
  module Metadata
    module HaloWars2
      class Leaders < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/leaders', options)
        end

      end
    end
  end
end
