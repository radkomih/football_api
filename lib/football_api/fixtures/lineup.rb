require 'football_api/base_resource'

module FootballApi
  module Fixtures
    class Lineup < BaseResource
      class << self
        def all_by_fixture(fixture_id, **options)
          fetch(fixture_id, options)
        end

        private

        def resource
          'lineUps'
        end
      end
    end
  end
end
