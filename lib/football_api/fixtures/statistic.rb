require 'football_api/base_resource'

module FootballApi
  module Fixtures
    class Statistic < BaseResource
      class << self
        def all_by_fixture(fixture_id, **options)
          fetch(fixture_id, options)
        end

        private

        def resource_path
          'statistics/fixture'
        end

        def resource
          'statistics'
        end
      end
    end
  end
end
