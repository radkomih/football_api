require 'football_api/base_resource'

module FootballApi
  module Players
    class StatisticsSeason < BaseResource
      class << self
        def all_by_player(player_id, **options)
          fetch("player/#{player_id}", options)
        end

        def all_by_player_and_season(player_id, season, **options)
          fetch("player/#{player_id}/#{season}", options)
        end

        def all_by_team_and_season(team_id, season, **options)
          fetch("team/#{team_id}/#{season}", options)
        end

        private

        def resource
          'players'
        end
      end
    end
  end
end
