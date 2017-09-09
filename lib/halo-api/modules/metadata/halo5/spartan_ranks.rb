module Halo
  module Metadata
    module Halo5
      class SpartanRanks < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/spartan-ranks", options)
        end

      end
    end
  end
end
