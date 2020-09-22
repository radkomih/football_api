require "bundler/setup"
require "pry"
require "webmock/rspec"
require "support/helpers"
require "football_api"

RSpec.configure do |config|
  include Helpers

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    @api_host = 'https://v2.api-football.com'
    @api_key = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
    @headers = {
      'Accept' => '*/*',
      'Accept-Encoding' => 'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'User-Agent' => 'Ruby',
      'Host' => @api_host.sub('https://', ''),
      'X-Rapidapi-Host' => @api_host,
      'X-Rapidapi-Key' => @api_key
    }

    FootballApi.configuration.api_host = @api_host
    FootballApi.configuration.api_key = @api_key
  end
end
