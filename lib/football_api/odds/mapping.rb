require 'football_api/base_resource'

module FootballApi
  module Odds
    class Mapping < BaseResource
      class << self
        private

        def namespace
          'odds'
        end

        def resource
          'mapping'
        end
      end
    end
  end
end
