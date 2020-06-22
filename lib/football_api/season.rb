require 'football_api/base_resource'

module FootballApi
  class Season < BaseResource
    class << self
      private

      def resource
        'seasons'
      end
    end
  end
end
