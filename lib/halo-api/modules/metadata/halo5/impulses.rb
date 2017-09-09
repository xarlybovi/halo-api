module Halo
  module Metadata
    module Halo5
      class Impulses < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/impulses", options)
        end

      end
    end
  end
end
