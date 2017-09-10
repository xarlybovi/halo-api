require 'halo-api/client'

require 'halo-api/modules/metadata/halo_wars2/campaign_levels'
require 'halo-api/modules/metadata/halo_wars2/campaign_logs'
require 'halo-api/modules/metadata/halo_wars2/card_keywords'
require 'halo-api/modules/metadata/halo_wars2/cards'
require 'halo-api/modules/metadata/halo_wars2/csr_designations'
require 'halo-api/modules/metadata/halo_wars2/difficulties'
require 'halo-api/modules/metadata/halo_wars2/game_object_categories'
require 'halo-api/modules/metadata/halo_wars2/game_objects'
require 'halo-api/modules/metadata/halo_wars2/leader_powers'
require 'halo-api/modules/metadata/halo_wars2/leaders'
require 'halo-api/modules/metadata/halo_wars2/maps'
require 'halo-api/modules/metadata/halo_wars2/packs'
require 'halo-api/modules/metadata/halo_wars2/playlists'
require 'halo-api/modules/metadata/halo_wars2/seasons'
require 'halo-api/modules/metadata/halo_wars2/spartan_ranks'
require 'halo-api/modules/metadata/halo_wars2/techs'


module Halo
  module Clients

    # Halo Wars 2 Metadata Client
    class HaloWars2MetadataClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/metadata/hw2' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def campaign_levels(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::CampaignLevels)
      end

      def campaign_logs(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::CampaignLogs)
      end

      def card_keywords(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::CardKeywords)
      end

      def cards(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Cards)
      end

      def csr_designations(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::CsrDesignations)
      end

      def difficulties(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Difficulties)
      end

      def game_object_categories(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::GameObjectCategories)
      end

      def game_objects(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::GameObjects)
      end

      def leader_powers(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::LeaderPowers)
      end

      def leaders(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Leaders)
      end

      def maps(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Maps)
      end

      def packs(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Packs)
      end

      def playlists(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Playlists)
      end

      def seasons(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Seasons)
      end

      def spartan_ranks(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::SpartanRanks)
      end

      def techs(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::HaloWars2::Techs)
      end

    end
  end
end
