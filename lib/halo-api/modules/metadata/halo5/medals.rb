module Halo
  module Metadata
    module Halo5
      class Medals < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/medals", options)
        end

      end
    end
  end
end
