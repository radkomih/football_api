require 'football_api/base_resource'

module FootballApi
  module Players
    class Search < BaseResource
      class << self
        def all_by_name(lastname, **options)
          fetch(lastname, options)
        end

        private

        def resource_path
          'players/search'
        end

        def resource
          'players'
        end
      end
    end
  end
end
