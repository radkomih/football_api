require 'football_api/base_resource'

module FootballApi
  module Players
    class TopScorer < BaseResource
      class << self
        def all_by_league(league_id, **options)
          fetch(league_id, options)
        end

        private

        def resource
          'topscorers'
        end
      end
    end
  end
end
