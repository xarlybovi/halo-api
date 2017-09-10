module Halo
  module Metadata
    module HaloWars2
      class Packs < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/packs", options)
        end

      end
    end
  end
end
