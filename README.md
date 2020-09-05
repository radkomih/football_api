# FootballApi

API client for https://www.api-football.com v2.3.9

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'football_api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install football_api

## Usage

```ruby
FootballApi.configure do |config|
  config.api_key = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
  config.api_host = 'https://www.api-football.com/demo/v2/'
end

date = Time.now.strftime("%Y-%m-%d")

FootballApi::Status.info

FootballApi::Timezone.all

FootballApi::Season.all

FootballApi::Country.all

FootballApi::League.find(357)
FootballApi::League.all
FootballApi::League.all_by_team(15)
FootballApi::League.all_by_team_and_season(15, 2019)
FootballApi::League.search('World')
FootballApi::League.all_by_country('Netherlands')
FootballApi::League.all_by_country_and_season('Brazil', 2019)
FootballApi::League.all_by_code('BR')
FootballApi::League.all_by_code_and_season('BR', 2019)
FootballApi::League.all_by_season(2019)
FootballApi::League.all_seasons_by_league(357)
FootballApi::League.all_by_league_and_season(357, 2019)
FootballApi::League.all_current
FootballApi::League.all_current_by_country('BR')
FootballApi::League.all_by_type('cup')
FootballApi::League.all_by_type_and_country('cup', 'Brazil')
FootballApi::League.all_by_type_and_country_and_season('cup', 'Brazil', 2019)
FootballApi::League.all_by_type_and_season('cup', 2019)

FootballApi::Teams::Data.find(15)
FootballApi::Teams::Data.all_by_league(357)
FootballApi::Teams::Data.search('Brazil')

FootballApi::Teams::Statistic.all_by_league_and_team(357, 15)

FootballApi::Teams::Statistic.all_by_league_and_team_and_date(1, 15, date)

FootballApi::Standing.all_by_league(357)

FootballApi::Fixtures::Round.all_by_league(357)
FootballApi::Fixtures::Round.all_by_league_and_current(357)

FootballApi::Fixtures::Fixture.find(111)
FootballApi::Fixtures::Fixture.all_live
FootballApi::Fixtures::Fixture.all_live_and_several_leagues(357, 524)
FootballApi::Fixtures::Fixture.all_by_date(date)
FootballApi::Fixtures::Fixture.all_by_league(357)
FootballApi::Fixtures::Fixture.all_by_league_and_date(357, date)
FootballApi::Fixtures::Fixture.all_by_league_and_round(357, 1)
FootballApi::Fixtures::Fixture.next_n_by_league(357, 10)
FootballApi::Fixtures::Fixture.last_n_by_league(357, 10)

FootballApi::Fixtures::H2h.all_by_team(1, 15)

FootballApi::Fixtures::Statistic.all_by_fixture(316)

FootballApi::Fixtures::Event.all_by_fixture(316)

FootballApi::Fixtures::Lineup.all_by_fixture(316)

FootballApi::Prediction.all_by_fixture(316)

FootballApi::Coach.find(316)
FootballApi::Coach.all_by_team(15)
FootballApi::Coach.search('aaaa')

FootballApi::Players::Season.all

FootballApi::Players::TopScorer.all_by_league(357)

FootballApi::Players::Search.all_by_name('Frog')

FootballApi::Players::Squad.all_by_team_and_season(15, 2019)

FootballApi::Players::StatisticsSeason.all_by_player(1)
FootballApi::Players::StatisticsSeason.all_by_player_and_season(1, 2019)
FootballApi::Players::StatisticsSeason.all_by_team_and_season(15, 2019)

FootballApi::Players::StatisticsFixture.by_fixture(111)

FootballApi::Transfer.all_by_player(452)
FootballApi::Transfer.all_by_team(11)

FootballApi::Trophey.all_by_player(276)
FootballApi::Trophey.all_by_coach(2)

FootballApi::Sideline.all_by_player(276)
FootballApi::Sideline.all_by_coach(2)

FootballApi::Odds::Bookmaker.all
FootballApi::Odds::Bookmaker.find(1)

FootballApi::Odds::Label.all
FootballApi::Odds::Label.find(1)

FootballApi::Odds::Mapping.all(page: 2)

FootballApi::Odds::Odd.all_by_fixture(1066)
FootballApi::Odds::Odd.all_by_date(date)
```

## TODO

Add spec examples.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/football_api.

