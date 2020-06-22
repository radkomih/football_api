require 'football_api/base_resource'

module FootballApi
  class Prediction < BaseResource
    class << self
      def all_by_fixture(fixture_id, **options)
        fetch(fixture_id, options)
      end

      private

      def resource
        'predictions'
      end
    end
  end
end
