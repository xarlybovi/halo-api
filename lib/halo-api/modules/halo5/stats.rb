# frozen_string_literal: true

module Halo
  module Halo5
    class Stats < APIResponse
      def initialize(options = {})
        @endpoint = '/stats/h5'
        super(options)
      end

      def company(company_id, options = {})
        get_data("#{@endpoint}/companies/#{company_id}", options)
      end

      def company_commendations(company_id, options = {})
        get_data("#{@endpoint}/companies/#{company_id}/commendations", options)
      end

      def leaderboard_player_csr(season_id, playlist_id, options = {})
        get_data("#{@endpoint}/player-leaderboards/csr/#{season_id}/#{playlist_id}", options)
      end

      def match_events(match_id, options = {})
        get_data("#{@endpoint}/matches/#{match_id}/events", options)
      end

      def match_result_arena(match_id, options = {})
        get_data("#{@endpoint}/arena/matches/#{match_id}", options)
      end

      def match_result_campaign(match_id, options = {})
        get_data("#{@endpoint}/campaign/matches/#{match_id}", options)
      end

      def match_result_custom(match_id, options = {})
        get_data("#{@endpoint}/custom/matches/#{match_id}", options)
      end

      def match_result_warzone(match_id, options = {})
        get_data("#{@endpoint}/warzone/matches/#{match_id}", options)
      end

      def player_commendations(player, options = {})
        get_data("#{@endpoint}/players/#{player}/commendations", options)
      end

      def player_match_history(player, options = {})
        get_data("#{@endpoint}/players/#{player}/matches", options)
      end

      def psr_arena(players, options = {})
        get_data("#{@endpoint}/servicerecords/arena", options.merge(players: players))
      end

      def psr_campaign(players, options = {})
        get_data("#{@endpoint}/servicerecords/campaign", options.merge(players: players))
      end

      def psr_custom(players, options = {})
        get_data("#{@endpoint}/servicerecords/custom", options.merge(players: players))
      end

      def psr_warzone(players, options = {})
        get_data("#{@endpoint}/servicerecords/warzone", options.merge(players: players))
      end

      def pc_match_result_custom(match_id, options = {})
        get_data("#{@endpoint}pc/custom/matches/#{match_id}", options)
      end

      def pc_player_match_history(player, options = {})
        get_data("#{@endpoint}pc/players/#{player}/matches", options)
      end

      def pc_psr_custom(players, options = {})
        get_data("#{@endpoint}pc/servicerecords/custom", options.merge(players: players))
      end
    end
  end
end
