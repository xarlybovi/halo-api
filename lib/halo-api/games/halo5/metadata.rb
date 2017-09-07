module Halo
  module Halo5
    class Metadata < Halo::APIResponse

      def initialize(options = {})
        @endpoint = '/metadata/h5/metadata'
        super(options)
      end

      def campaign_missions(options = {})
        get_data("#{@endpoint}/campaign-missions", options)
      end

      def commendations(options = {})
        get_data("#{@endpoint}/commendations", options)
      end

      def csr_designations(options = {})
        get_data("#{@endpoint}/csr-designations", options)
      end

      def enemies(options = {})
        get_data("#{@endpoint}/enemies", options)
      end

      def flexible_stats(options = {})
        get_data("#{@endpoint}/flexible-stats", options)
      end

      def game_base_variants(options = {})
        get_data("#{@endpoint}/game-base-variants", options)
      end

      def game_variant(id, options = {})
        get_data("#{@endpoint}/game-variants/#{id}", options)
      end

      def impulses(options = {})
        get_data("#{@endpoint}/impulses", options)
      end

      def map_variant(id, options = {})
        get_data("#{@endpoint}/map-variants/#{id}", options)
      end

      def maps(options = {})
        get_data("#{@endpoint}/maps", options)
      end

      def medals(options = {})
        get_data("#{@endpoint}/medals", options)
      end

      def playlist(options = {})
        get_data("#{@endpoint}/playlist", options)
      end

      def requisition(id, options = {})
        get_data("#{@endpoint}/requisitions/#{id}", options)
      end

      def requisition_pack(id, options = {})
        get_data("#{@endpoint}/requisition-packs/#{id}", options)
      end

      def seasons(options = {})
        get_data("#{@endpoint}/seasons", options)
      end

      def skulls(options = {})
        get_data("#{@endpoint}/skulls", options)
      end

      def spartan_ranks(options = {})
        get_data("#{@endpoint}/spartan-ranks", options)
      end

      def team_colors(options = {})
        get_data("#{@endpoint}/team-colors", options)
      end

      def vehicles(options = {})
        get_data("#{@endpoint}/vehicles", options)
      end

      def weapons(options = {})
        get_data("#{@endpoint}/weapons", options)
      end
    end
  end
end