module Halo
  module HaloWars2
    class Metadata < Halo::APIResponse

      def initialize(options = {})
        @endpoint = '/metadata/hw2'
        super(options)
      end

      def campaign_missions(options = {})
        get_data("#{@endpoint}/campaign-levels", options)
      end

      def campaign_logs(options = {})
        get_data("#{@endpoint}/campaign-logs", options)
      end

      def card_keywords(options = {})
        get_data("#{@endpoint}/card-keywords", options)
      end

      def cards(options = {})
        get_data("#{@endpoint}/cards", options)
      end

      def csr_designations(options = {})
        get_data("#{@endpoint}/csr-designations", options)
      end

      def difficulties(options = {})
        get_data("#{@endpoint}/difficulties", options)
      end

      def game_object_categories(options = {})
        get_data("#{@endpoint}/game-object-categories", options)
      end

      def leader_powers(options = {})
        get_data("#{@endpoint}/leader-powers", options)
      end

      def leaders(options = {})
        get_data("#{@endpoint}/leaders", options)
      end

      def maps(options = {})
        get_data("#{@endpoint}/maps", options)
      end

      def packs(options = {})
        get_data("#{@endpoint}/packs", options)
      end

      def playlists(options = {})
        get_data("#{@endpoint}/playlists", options)
      end

      def seasons(options = {})
        get_data("#{@endpoint}/seasons", options)
      end

      def spartan_ranks(options = {})
        get_data("#{@endpoint}/spartan-ranks", options)
      end

      def techs(options = {})
        get_data("#{@endpoint}/techs", options)
      end

    end
  end
end