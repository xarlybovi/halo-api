module Halo
  module Metadata
    module Halo5
      class Skulls < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/skulls", options)
        end

      end
    end
  end
end
