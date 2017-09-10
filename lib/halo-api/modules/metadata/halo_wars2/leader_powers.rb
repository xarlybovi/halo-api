module Halo
  module Metadata
    module HaloWars2
      class LeaderPowers < APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/leader-powers", options)
        end

      end
    end
  end
end
