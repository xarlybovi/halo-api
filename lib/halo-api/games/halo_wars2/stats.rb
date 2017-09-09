module Halo
  module HaloWars2
    class Stats < Halo::APIResponse

      def initialize(options = {})
        @endpoint = '/stats/hw2'
        super(options)
      end

      def player_leaderboards(season_id, playlist_id, options = {})
        get_data("#{@endpoint}/player-leaderboards/csr/#{season_id}/#{playlist_id}", options)
      end

      def match_events(match_id, options = {})
        get_data("#{@endpoint}/matches/#{match_id}/events", options)
      end

      def match_result(match_id, options = {})
        get_data("#{@endpoint}/matches/#{match_id}", options)
      end

      def player_campaign_progress(player, options = {})
        get_data("#{@endpoint}/players/#{player}/campaign-progress", options)
      end

      def player_match_history(player, options = {})
        get_data("#{@endpoint}/players/#{player}/matches", options)
      end

      def player_playlist_rating(playlist_id, players, options = {})
        get_data("#{@endpoint}/playlist/#{playlist_id}/rating?players=#{players}", options)
      end

      def player_season_stats(player, season_id, options = {})
        get_data("#{@endpoint}/players/#{player}/stats/seasons/#{season_id}", options)
      end

      def player_stats(player, options = {})
        get_data("#{@endpoint}/players/#{player}/stats", options)
      end

      def player_xp(players, options = {})
        get_data("#{@endpoint}/xp?players=#{players}", options)
      end
    end
  end
end