require 'football_api/base_resource'

module FootballApi
  module Odds
    class Odd < BaseResource
      class << self
        def all_by_fixture(fixture_id, **options)
          fetch("fixture/#{fixture_id}", options)
        end

        def all_by_date(date, **options)
          fetch("date/#{date}", options)
        end

        def all_by_date_and_bookmaker(date, bookmaker_id, **options)
          fetch("date/#{date}/bookmaker/#{bookmaker_id}", options)
        end

        def all_by_fixture_and_bookmaker(fixture_id, bookmaker_id, **options)
          fetch("fixture/#{fixture_id}/bookmaker/#{bookmaker_id}", options)
        end

        def all_by_fixture_and_label(fixture_id, label_id, **options)
          fetch("fixture/#{fixture_id}/label/#{label_id}", options)
        end

        def all_by_league(league_id, **options)
          fetch("league/#{league_id}", options)
        end

        def all_by_league_and_bookmaker(league_id, bookmaker_id, **options)
          fetch("league/#{league_id}/bookmaker/#{bookmaker_id}", options)
        end

        def all_by_league_and_label(league_id, label_id, **options)
          fetch("league/#{league_id}/label/#{label_id}", options)
        end

        private

        def resource
          'odds'
        end
      end
    end
  end
end
