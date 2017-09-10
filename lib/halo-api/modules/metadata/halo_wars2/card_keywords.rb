module Halo
  module Metadata
    module HaloWars2
      class CardKeywords < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/card-keywords", options)
        end

      end
    end
  end
end
