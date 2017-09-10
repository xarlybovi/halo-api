module Halo
  module Metadata
    module HaloWars2
      class Cards < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/cards", options)
        end

      end
    end
  end
end
