require 'halo-api/client'

require 'halo-api/modules/stats/halo_wars2/leaderboard_player_csr'
require 'halo-api/modules/stats/halo_wars2/match_events'
require 'halo-api/modules/stats/halo_wars2/match_result'
require 'halo-api/modules/stats/halo_wars2/player_campaign_progress'
require 'halo-api/modules/stats/halo_wars2/player_match_history'
require 'halo-api/modules/stats/halo_wars2/player_playlist_ratings'
require 'halo-api/modules/stats/halo_wars2/player_season_stats_summary'
require 'halo-api/modules/stats/halo_wars2/player_stats_summary'
require 'halo-api/modules/stats/halo_wars2/player_xp'


module Halo
  module Stats

    # Halo Wars 2 Stats Client
    class HaloWars2StatsClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/stats/hw2' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def leaderboard_player_csr(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::LeaderboardPlayerCsr)
      end

      def match_events(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::MatchEvents)
      end

      def match_result(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::MatchResult)
      end

      def player_campaign_progress(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerCampaignProgress)
      end

      def player_match_history(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerMatchHistory)
      end

      def player_playlist_ratings(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerPlaylistRatings)
      end

      def player_season_stats_summary(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerSeasonStatsSummary)
      end

      def player_stats_summary(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerStatsSummary)
      end

      def player_xp(options = {})
        merge_options_and_return_obj(options, Halo::Stats::HaloWars2::PlayerXp)
      end

    end
  end
end
