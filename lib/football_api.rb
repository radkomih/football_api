Dir["#{File.dirname(__FILE__)}/football_api/**/*.rb"].each { |file| require file }

module FootballApi
  class << self
    def configuration
      @configuration ||= Configuration.new
      @configuration
    end

    def configure
      config = configuration
      yield(config)
    end
  end
end
