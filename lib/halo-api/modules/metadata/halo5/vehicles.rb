module Halo
  module Metadata
    module Halo5
      class Vehicles < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/vehicles", options)
        end

      end
    end
  end
end
