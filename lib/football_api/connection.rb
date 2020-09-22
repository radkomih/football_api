require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module FootballApi
  module Connection
    def get(endpoint)
      raise 'Missing API key or Host' unless FootballApi.configuration.api_host ||
                                             FootballApi.configuration.api_key

      url = URI(FootballApi.configuration.api_host.split('/').push(endpoint).join('/'))
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      connection = Net::HTTP::Get.new(url)
      connection["x-rapidapi-host"] = url.host
      connection["x-rapidapi-key"] = FootballApi.configuration.api_key

      response = http.request(connection)

      case response
      when Net::HTTPSuccess
        json_response = JSON
          .parse(response.read_body)
          .dig('api')

        raise StandardError.new(json_response['error']) unless json_response['error'].nil?

        json_response
      else
        raise StandardError.new(response.read_body)
      end
    end
  end
end
