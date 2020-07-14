require 'football_api/base_resource'

module FootballApi
  class Status < BaseResource
    class << self
      def info
        fetch
      end

      private

      def resource
        'status'
      end
    end
  end
end
