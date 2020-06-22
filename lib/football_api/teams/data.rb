require 'football_api/base_resource'

module FootballApi
  module Teams
    class Data < BaseResource
      class << self
        def find(team_id)
          first("team/#{team_id}")
        end

        def all_by_league(league_id, **options)
          fetch("league/#{league_id}", options)
        end

        def search(name_or_country, **options)
          fetch("search/#{name_or_country}", options)
        end

        private

        def resource
          'teams'
        end
      end
    end
  end
end
