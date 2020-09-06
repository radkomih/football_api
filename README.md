# FootballApi

API client for https://www.api-football.com - v2.3.9

## Installation

Add this line to your application's Gemfile:

`gem 'football_api'`

And then execute:

`$ bundle install`

Or install it yourself as:

`$ gem install football_api`

## Usage

```
FootballApi.configure do |config|
  config.api_key = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
  config.api_host = 'https://www.api-football.com/demo/v2/'
end
```

[FootballApi::Status.info](https://www.api-football.com/documentation#status-requests)

[FootballApi::Timezone.all](https://www.api-football.com/documentation#timezone-requests)

[FootballApi::Season.all](https://www.api-football.com/documentation#seasons-requests)

[FootballApi::Country.all](https://www.api-football.com/documentation#countries-requests)


FootballApi::League.find
FootballApi::League.all
FootballApi::League.all_by_team
FootballApi::League.all_by_team_and_season
FootballApi::League.search
FootballApi::League.all_by_country
FootballApi::League.all_by_country_and_season
FootballApi::League.all_by_code
FootballApi::League.all_by_code_and_season
FootballApi::League.all_by_season
FootballApi::League.all_seasons_by_league
FootballApi::League.all_by_league_and_season
FootballApi::League.all_current
FootballApi::League.all_current_by_country
FootballApi::League.all_by_type
FootballApi::League.all_by_type_and_country
FootballApi::League.all_by_type_and_country_and_season
FootballApi::League.all_by_type_and_season

FootballApi::Teams::Data.find
FootballApi::Teams::Data.all_by_league
FootballApi::Teams::Data.search

FootballApi::Teams::Statistic.all_by_league_and_team

FootballApi::Teams::Statistic.all_by_league_and_team_and_date

FootballApi::Standing.all_by_league

FootballApi::Fixtures::Round.all_by_league
FootballApi::Fixtures::Round.all_by_league_and_current

FootballApi::Fixtures::Fixture.find
FootballApi::Fixtures::Fixture.all_live
FootballApi::Fixtures::Fixture.all_live_and_several_leagues
FootballApi::Fixtures::Fixture.all_by_date
FootballApi::Fixtures::Fixture.all_by_league
FootballApi::Fixtures::Fixture.all_by_league_and_date
FootballApi::Fixtures::Fixture.all_by_league_and_round
FootballApi::Fixtures::Fixture.next_n_by_league
FootballApi::Fixtures::Fixture.last_n_by_league

FootballApi::Fixtures::H2h.all_by_team

FootballApi::Fixtures::Statistic.all_by_fixture

FootballApi::Fixtures::Event.all_by_fixture

FootballApi::Fixtures::Lineup.all_by_fixture

FootballApi::Prediction.all_by_fixture

FootballApi::Coach.find
FootballApi::Coach.all_by_team
FootballApi::Coach.search

FootballApi::Players::Season.all

FootballApi::Players::TopScorer.all_by_league

FootballApi::Players::Search.all_by_name

FootballApi::Players::Squad.all_by_team_and_season

FootballApi::Players::StatisticsSeason.all_by_player
FootballApi::Players::StatisticsSeason.all_by_player_and_season
FootballApi::Players::StatisticsSeason.all_by_team_and_season

FootballApi::Players::StatisticsFixture.by_fixture

FootballApi::Transfer.all_by_player
FootballApi::Transfer.all_by_team

FootballApi::Trophey.all_by_player
FootballApi::Trophey.all_by_coach

FootballApi::Sideline.all_by_player
FootballApi::Sideline.all_by_coach

FootballApi::Odds::Bookmaker.all
FootballApi::Odds::Bookmaker.find

FootballApi::Odds::Label.all
FootballApi::Odds::Label.find

FootballApi::Odds::Mapping.all

FootballApi::Odds::Odd.all_by_fixture
FootballApi::Odds::Odd.all_by_date
FootballApi::Odds::Odd.all_by_date_and_bookmaker
FootballApi::Odds::Odd.all_by_fixture_and_bookmaker
FootballApi::Odds::Odd.all_by_fixture_and_label
FootballApi::Odds::Odd.all_by_league
FootballApi::Odds::Odd.all_by_league_and_bookmaker
FootballApi::Odds::Odd.all_by_league_and_label


## TODO

Add spec examples.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/football_api.

