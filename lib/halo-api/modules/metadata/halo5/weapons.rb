module Halo
  module Metadata
    module Halo5
      class Weapons < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/weapons", options)
        end

      end
    end
  end
end