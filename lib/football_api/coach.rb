require 'football_api/base_resource'

module FootballApi
  class Coach < BaseResource
    class << self
      def find(coach_id)
        first("coach/#{coach_id}")
      end

      def all_by_team(team_id, **options)
        fetch("team/#{team_id}", options)
      end

      def search(name, **options)
        search_term = URI.encode(name)

        fetch("search/#{search_term}", options)
      end

      private

      def resource
        'coachs'
      end
    end
  end
end
