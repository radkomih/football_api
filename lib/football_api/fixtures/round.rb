require 'football_api/base_resource'

module FootballApi
  module Fixtures
    class Round < BaseResource
      class << self
        def all_by_league(league_id, **options)
          fetch("#{league_id}", options)
        end

        def all_by_league_and_current(league_id, **options)
          fetch("#{league_id}/current", options)
        end

        private

        def resource_path
          'fixtures/rounds'
        end

        def resource
          'fixtures'
        end
      end
    end
  end
end
