module Halo
  module Metadata
    module Halo5
      class SpartanRanks < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data('/spartan-ranks', options)
        end

      end
    end
  end
end
