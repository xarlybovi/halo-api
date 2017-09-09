module Halo
  module Metadata
    module Halo5
      class RequisitionPack < Halo::APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(id, options = {})
          get_data("#{@endpoint}/requisitions/#{id}", options)
        end

      end
    end
  end
end
