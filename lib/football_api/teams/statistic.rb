require 'football_api/base_resource'

module FootballApi
  module Teams
    class Statistic < BaseResource
      class << self
        def all_by_league_and_team(league_id, team_id, **options)
          fetch("#{league_id}/#{team_id}", options)
        end

        def all_by_league_and_team_and_date(league_id, team_id, date, **options)
          fetch("#{league_id}/#{team_id}/#{date}", options)
        end

        private

        def resource
          'statistics'
        end
      end
    end
  end
end
