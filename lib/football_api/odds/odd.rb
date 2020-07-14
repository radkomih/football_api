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

        private

        def resource
          'odds'
        end
      end
    end
  end
end
