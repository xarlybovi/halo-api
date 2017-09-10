module Halo
  module Metadata
    module Halo5
      class Commendations < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/commendations", options)
        end

      end
    end
  end
end
