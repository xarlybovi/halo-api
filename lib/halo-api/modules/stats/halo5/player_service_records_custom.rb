module Halo
  module Stats
    module Halo5
      class PlayerServiceRecordsCustom < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}/servicerecords/custom?players=#{players}", options)
        end

      end
    end
  end
end
