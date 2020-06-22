require 'football_api/base_resource'

module FootballApi
  module Fixtures
    class H2h < BaseResource
      class << self
        def all_by_team(team_id1, team_id2, **options)
          fetch("#{team_id1}/#{team_id2}", options)
        end

        private

        def format_result(result)
          result.slice('teams', 'fixtures')
        end

        def resource
          'fixtures/h2h'
        end
      end
    end
  end
end
