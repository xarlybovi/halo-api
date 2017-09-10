module Halo
  module Stats
    module Halo5
      class PlayerServiceRecordsWarzone < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}/servicerecords/warzone", options.merge(players: players))
        end

      end
    end
  end
end
