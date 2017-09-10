module Halo
  module Metadata
    module HaloWars2
      class GameObjects < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/game-objects", options)
        end

      end
    end
  end
end
