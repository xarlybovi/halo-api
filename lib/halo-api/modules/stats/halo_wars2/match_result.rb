module Halo
  module Stats
    module HaloWars2
      class MatchResult < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(match_id, options = {})
          get_data("#{@endpoint}/matches/#{match_id}", options)
        end

      end
    end
  end
end
