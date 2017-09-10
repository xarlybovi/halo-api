module Halo
  module Stats
    module Halo5
      class PcPlayerServiceRecordsCustom < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}pc/servicerecords/custom", options.merge(players: players))
        end

      end
    end
  end
end
