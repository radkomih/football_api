require 'football_api/base_resource'

module FootballApi
  module Odds
    class Bookmaker < BaseResource
      class << self
        def find(bookmaker_id)
          first(bookmaker_id)
        end

        private

        def namespace
          'odds'
        end

        def resource
          'bookmakers'
        end
      end
    end
  end
end
