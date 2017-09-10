require 'halo-api/client'

require 'halo-api/modules/stats/halo5/company'
require 'halo-api/modules/stats/halo5/company_commendations'
require 'halo-api/modules/stats/halo5/leaderboard_player_csr'
require 'halo-api/modules/stats/halo5/match_events'
require 'halo-api/modules/stats/halo5/match_result_arena'
require 'halo-api/modules/stats/halo5/match_result_campaign'
require 'halo-api/modules/stats/halo5/match_result_custom'
require 'halo-api/modules/stats/halo5/match_result_warzone'
require 'halo-api/modules/stats/halo5/player_commendations'
require 'halo-api/modules/stats/halo5/player_match_history'
require 'halo-api/modules/stats/halo5/player_service_records_arena'
require 'halo-api/modules/stats/halo5/player_service_records_campaign'
require 'halo-api/modules/stats/halo5/player_service_records_custom'
require 'halo-api/modules/stats/halo5/player_service_records_warzone'
require 'halo-api/modules/stats/halo5/pc_match_result_custom'
require 'halo-api/modules/stats/halo5/pc_player_match_history'
require 'halo-api/modules/stats/halo5/pc_player_service_records_custom'


module Halo
  module Clients

    # Halo 5 Stats Client
    class Halo5StatsClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/stats/h5' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def company(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::Company)
      end

      def company_commendations(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::CompanyCommendations)
      end

      def leaderboard_player_csr(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::LeaderboardPlayerCsr)
      end

      def match_events(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::MatchEvents)
      end

      def match_result_arena(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::MatchResultArena)
      end

      def match_result_campaign(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::MatchResultCampaign)
      end

      def match_result_custom(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::MatchResultCustom)
      end

      def match_result_warzone(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::MatchResultWarzone)
      end

      def player_commendations(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerCommendations)
      end

      def player_match_history(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerMatchHistory)
      end

      def psr_arena(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerServiceRecordsArena)
      end

      def psr_campaign(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerServiceRecordsCampaign)
      end

      def psr_custom(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerServiceRecordsCustom)
      end

      def psr_warzone(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PlayerServiceRecordsWarzone)
      end

      def pc_match_result_custom(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PcMatchResultCustom)
      end

      def pc_player_match_history(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PcPlayerMatchHistory)
      end

      def pc_psr_custom(options = {})
        merge_options_and_return_obj(options, Halo::Stats::Halo5::PcPlayerServiceRecordsWarzone)
      end

    end
  end
end
