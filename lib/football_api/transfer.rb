require 'football_api/base_resource'

module FootballApi
  class Transfer < BaseResource
    class << self
      def all_by_player(player_id, **options)
        fetch("player/#{player_id}", options)
      end

      def all_by_team(team_id, **options)
        fetch("team/#{team_id}", options)
      end

      private

      def resource
        'transfers'
      end
    end
  end
end
