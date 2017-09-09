module Halo
  module Metadata
    module Halo5
      class GameVariant < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(id, options = {})
          get_data("#{@endpoint}/game-variants/#{id}", options)
        end

      end
    end
  end
end
