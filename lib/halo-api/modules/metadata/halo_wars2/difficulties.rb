module Halo
  module Metadata
    module HaloWars2
      class Difficulties < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/difficulties", options)
        end

      end
    end
  end
end
