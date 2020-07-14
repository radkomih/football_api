require 'football_api/base_resource'

module FootballApi
  class Standing < BaseResource
    class << self
      def all_by_league(league_id, **options)
        fetch(league_id, options)
      end

      private

      def resource_path
        'leagueTable'
      end

      def resource
        'standings'
      end
    end
  end
end
