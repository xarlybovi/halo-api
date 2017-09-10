module Halo
  module Stats
    module Halo5
      class MatchEvents < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(match_id, options = {})
          get_data("#{@endpoint}/matches/#{match_id}/events", options)
        end

      end
    end
  end
end
