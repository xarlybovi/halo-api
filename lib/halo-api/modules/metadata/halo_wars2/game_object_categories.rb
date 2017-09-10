module Halo
  module Metadata
    module HaloWars2
      class GameObjectCategories < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/game-object-categories', options)
        end

      end
    end
  end
end
