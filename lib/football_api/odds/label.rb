require 'football_api/base_resource'

module FootballApi
  module Odds
    class Label < BaseResource
      class << self
        def find(label_id)
          first(label_id)
        end

        private

        def namespace
          'odds'
        end

        def resource
          'labels'
        end
      end
    end
  end
end
