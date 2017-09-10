module Halo
  module Stats
    module Halo5
      class MatchResultArena < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(match_id, options = {})
          get_data("/arena/matches/#{match_id}", options)
        end

      end
    end
  end
end
