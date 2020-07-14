require 'football_api/base_resource'

module FootballApi
  module Players
    class Squad < BaseResource
      class << self
        def all_by_team_and_season(team_id, season, **options)
          fetch("#{team_id}/#{season}", options)
        end

        private

        def resource_path
          'players/squad'
        end

        def resource
          'players'
        end
      end
    end
  end
end
