require 'football_api/base_resource'

module FootballApi
  module Players
    class Season < BaseResource
      class << self
        private

        def resource_path
          'players/seasons'
        end

        def resource
          'players'
        end
      end
    end
  end
end
