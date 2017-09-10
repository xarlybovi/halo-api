module Halo
  module Metadata
    module HaloWars2
      class Playlists < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/playlists', options)
        end

      end
    end
  end
end
