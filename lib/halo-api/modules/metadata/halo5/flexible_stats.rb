module Halo
  module Metadata
    module Halo5
      class FlexibleStats < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/flexible-stats", options)
        end

      end
    end
  end
end
