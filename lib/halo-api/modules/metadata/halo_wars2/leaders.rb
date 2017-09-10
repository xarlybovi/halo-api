module Halo
  module Metadata
    module HaloWars2
      class Leaders < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/leaders", options)
        end

      end
    end
  end
end
