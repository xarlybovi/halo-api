module Halo
  module Metadata
    module Halo5
      class Commendations < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/commendations', options)
        end

      end
    end
  end
end
