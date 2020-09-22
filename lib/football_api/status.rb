require 'football_api/base_resource'

module FootballApi
  class Status < BaseResource
    class << self
      def info
        if FootballApi.configuration.api_host == Configuration::RAPID_API_HOST
          raise FootballApi::Errors::UnsupportedError.new('Unsupported with the Rapid API')
        end

        fetch
      end

      private

      def resource
        'status'
      end
    end
  end
end
