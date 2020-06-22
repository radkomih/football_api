require 'football_api/base_resource'

module FootballApi
  module Players
    class StatisticsFixture < BaseResource
      class << self
        def  by_fixture(fixture_id, **options)
          fetch("fixture/#{fixture_id}", options)
        end

        private

        def resource
          'players'
        end
      end
    end
  end
end
