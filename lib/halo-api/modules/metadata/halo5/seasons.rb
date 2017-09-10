module Halo
  module Metadata
    module Halo5
      class Seasons < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/seasons", options)
        end

      end
    end
  end
end
