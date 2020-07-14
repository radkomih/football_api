require 'football_api/base_resource'

module FootballApi
  class Timezone < BaseResource
    class << self
      private

      def resource
        'timezone'
      end
    end
  end
end
