module Halo
  module Metadata
    module Halo5
      class Playlist < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/playlist", options)
        end

      end
    end
  end
end
