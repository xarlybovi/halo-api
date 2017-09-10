module Halo
  module Metadata
    module Halo5
      class Playlist < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/playlist', options)
        end

      end
    end
  end
end
