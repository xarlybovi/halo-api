module Halo
  module Metadata
    module HaloWars2
      class Maps < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/maps', options)
        end

      end
    end
  end
end
