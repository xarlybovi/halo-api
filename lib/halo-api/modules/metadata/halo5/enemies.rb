module Halo
  module Metadata
    module Halo5
      class Enemies < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/enemies", options)
        end

      end
    end
  end
end
