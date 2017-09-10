module Halo
  module Metadata
    module HaloWars2
      class Techs < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/techs', options)
        end

      end
    end
  end
end