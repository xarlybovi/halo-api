module Halo
  module Metadata
    module Halo5
      class MapVariant < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(id, options = {})
          get_data("/map-variants/#{id}", options)
        end

      end
    end
  end
end
