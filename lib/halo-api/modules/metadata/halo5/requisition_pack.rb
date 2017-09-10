module Halo
  module Metadata
    module Halo5
      class RequisitionPack < APIResponse

        def initialize(options = {})
          super(options)
        end

        def find(id, options = {})
          get_data("/requisition-packs/#{id}", options)
        end

      end
    end
  end
end
