require 'football_api/base_resource'

module FootballApi
  module Fixtures
    class Fixture < BaseResource
      class << self
        def find(fixture_id)
          first("id/#{fixture_id}")
        end

        def all_live(**options)
          fetch('live', options)
        end

        def all_live_and_several_leagues(*league_ids, **options)
          fetch("live/#{league_ids.join('-')}", options)
        end

        def all_by_date(date, **options)
          fetch("date/#{date}", options)
        end

        def all_by_league(league_id, **options)
          fetch("league/#{league_id}", options)
        end

        def all_by_league_and_date(league_id, date, **options)
          fetch("league/#{league_id}/#{date}", options)
        end

        def all_by_league_and_round(league_id, round, **options)
          fetch("league/#{league_id}/#{round}", options)
        end

        def next_n_by_league(league_id, number, **options)
          fetch("league/#{league_id}/next/#{number}", options)
        end

        def last_n_by_league(league_id, number, **options)
          fetch("league/#{league_id}/last/#{number}", options)
        end

        def by_team(team_id, **options)
          fetch("team/#{team_id}", options)
        end

        def by_team_and_league(team_id, league_id, **options)
          fetch("team/#{team_id}/#{league_id}", options)
        end

        def next_n_by_team(number, team_id, **options)
          fetch("team/#{team_id}/next/#{number}", options)
        end

        def last_n_by_team(number, team_id, **options)
          fetch("team/#{team_id}/next/#{number}", options)
        end

        private

        def resource
          'fixtures'
        end
      end
    end
  end
end
