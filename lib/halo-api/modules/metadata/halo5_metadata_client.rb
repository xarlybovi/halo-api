require 'halo-api/client'

require 'halo-api/modules/metadata/halo5/campaign_missions'
require 'halo-api/modules/metadata/halo5/commendations'
require 'halo-api/modules/metadata/halo5/csr_designations'
require 'halo-api/modules/metadata/halo5/enemies'
require 'halo-api/modules/metadata/halo5/flexible_stats'
require 'halo-api/modules/metadata/halo5/game_base_variants'
require 'halo-api/modules/metadata/halo5/game_variant'
require 'halo-api/modules/metadata/halo5/impulses'
require 'halo-api/modules/metadata/halo5/map_variant'
require 'halo-api/modules/metadata/halo5/maps'
require 'halo-api/modules/metadata/halo5/medals'
require 'halo-api/modules/metadata/halo5/playlist'
require 'halo-api/modules/metadata/halo5/requisition'
require 'halo-api/modules/metadata/halo5/requisition_pack'
require 'halo-api/modules/metadata/halo5/seasons'
require 'halo-api/modules/metadata/halo5/skulls'
require 'halo-api/modules/metadata/halo5/spartan_ranks'
require 'halo-api/modules/metadata/halo5/team_colors'
require 'halo-api/modules/metadata/halo5/vehicles'
require 'halo-api/modules/metadata/halo5/weapons'


module Halo
  module Metadata

    # Halo 5 Metadata endpoints
    class Halo5MetadataClient < Client

      def initialize(options = {})
        client_settings = { endpoint: '/metadata/h5/metadata' }
        client_settings = client_settings.merge(options)

        super(client_settings)
      end

      def campaign_missions(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::CampaignMissions)
      end

      def commendations(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Commendations)
      end

      def csr_designations(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::CsrDesignations)
      end

      def enemies(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Enemies)
      end

      def flexible_stats(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::FlexibleStats)
      end

      def game_base_variants(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::GameBaseVariants)
      end

      def game_variant(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::GameVariant)
      end

      def impulses(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Impulses)
      end

      def map_variant(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::MapVariant)
      end

      def maps(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Maps)
      end

      def medals(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Medals)
      end

      def playlist(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Playlist)
      end

      def requisition(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Requisition)
      end

      def requisition_pack(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::RequisitionPack)
      end

      def seasons(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Seasons)
      end

      def skulls(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Skulls)
      end

      def spartan_ranks(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::SpartanRanks)
      end

      def team_colors(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::TeamColors)
      end

      def vehicles(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Vehicles)
      end

      def weapons(options = {})
        merge_options_and_return_obj(options, Halo::Metadata::Halo5::Weapons)
      end
    end

  end
end
