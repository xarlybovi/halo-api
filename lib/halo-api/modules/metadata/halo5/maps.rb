module Halo
  module Metadata
    module Halo5
      class Maps < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/maps", options)
        end

      end
    end
  end
end