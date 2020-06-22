require 'football_api/base_resource'

module FootballApi
  class Sideline < BaseResource
    class << self
      def all_by_player(player_id, **options)
        fetch("player/#{player_id}", options)
      end

      def all_by_coach(coach_id, **options)
        fetch("coach/#{coach_id}", options)
      end

      private

      def resource
        'sidelined'
      end
    end
  end
end
