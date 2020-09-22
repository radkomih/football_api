module FootballApi
  class Configuration
    API_HOST = 'https://v2.api-football.com/'.freeze
    RAPID_API_HOST = 'https://api-football-v1.p.rapidapi.com/v2/'.freeze
    DEMO_API_HOST = 'https://www.api-football.com/demo/v2/'.freeze

    attr_accessor :api_host, :api_key

    def initialize
      @api_host = nil
      @api_key = nil
    end
  end
end
