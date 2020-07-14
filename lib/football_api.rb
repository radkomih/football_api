require 'pry'
require 'football_api/configuration'
require 'football_api/status'
require 'football_api/timezone'
require 'football_api/season'
require 'football_api/country'
require 'football_api/league'
require 'football_api/teams/data'
require 'football_api/teams/statistic'
require 'football_api/standing'
require 'football_api/fixtures/round'
require 'football_api/fixtures/fixture'
require 'football_api/fixtures/h2h'
require 'football_api/fixtures/statistic'
require 'football_api/fixtures/event'
require 'football_api/fixtures/lineup'
require 'football_api/prediction'
require 'football_api/coach'
require 'football_api/players/season'
require 'football_api/players/top_scorer'
require 'football_api/players/search'
require 'football_api/players/squad'
require 'football_api/players/statistics_season'
require 'football_api/players/statistics_fixture'
require 'football_api/transfer'
require 'football_api/trophey'
require 'football_api/sideline'
require 'football_api/odds/bookmaker'
require 'football_api/odds/label'
require 'football_api/odds/mapping'
require 'football_api/odds/odd'
require 'football_api/version'

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
