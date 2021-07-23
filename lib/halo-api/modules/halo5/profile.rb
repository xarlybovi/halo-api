# frozen_string_literal: true

module Halo
  module Halo5
    class Profile < APIResponse

      def initialize(options = {})
        @player = options.delete(:player)
        @endpoint = "/profile/h5/profiles/#{@player}"

        super(options)
      end

      def player_appearance(options = {})
        get_data("#{@endpoint}/appearance", options)
      end

      def player_emblem_image(options = {})
        get_data("#{@endpoint}/emblem", options)
      end

      def player_spartan_image(options = {})
        get_data("#{@endpoint}/spartan", options)
      end
    end
  end
end
