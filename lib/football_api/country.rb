require 'football_api/base_resource'

module FootballApi
  class Country < BaseResource
    class << self
      private

      def resource
        'countries'
      end
    end
  end
end
