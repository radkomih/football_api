module FootballApi
  class Configuration
    attr_accessor :api_host, :api_key

    def initialize
      @api_host = nil
      @api_key = nil
    end
  end
end
