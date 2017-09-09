module Halo
  module Stats
    module Halo5
      class PcPlayerServiceRecordsCustom < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}pc/servicerecords/custom?players=#{players}", options)
        end

      end
    end
  end
end
