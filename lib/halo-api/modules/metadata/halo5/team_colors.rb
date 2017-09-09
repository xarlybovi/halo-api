module Halo
  module Metadata
    module Halo5
      class TeamColors < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def all(options = {})
          get_data("#{@endpoint}/team-colors", options)
        end

      end
    end
  end
end
