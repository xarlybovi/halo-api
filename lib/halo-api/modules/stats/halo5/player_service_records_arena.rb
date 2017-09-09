module Halo
  module Stats
    module Halo5
      class PlayerServiceRecordsArena < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(players, options = {})
          get_data("#{@endpoint}/servicerecords/arena?players=#{players}", options)
        end

      end
    end
  end
end
