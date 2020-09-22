# FootballApi

A Ruby interface to the [www.api-football.com](https://www.api-football.com) API v2.3.9 (current).

## Installation

Add this line to your application's Gemfile:

`gem 'football_api'`

And then execute:

`$ bundle install`

Or install it yourself as:

`$ gem install football_api`

## Configuration

```
FootballApi.configure do |config|
  config.api_host = 'https://www.api-football.com/demo/v2'
  config.api_key = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
end
```

## Usage
[Status](https://www.api-football.com/documentation#status-requests)

This endpoint does not require any parameters

`FootballApi::Status.info`

___

[Timezones](https://www.api-football.com/documentation#timezone-requests)

This endpoint does not require any parameters

`FootballApi::Timezone.all`

___

[Seasons](https://www.api-football.com/documentation#seasons-requests)

This endpoint does not require any parameters

`FootballApi::Season.all`

___

[Contries](https://www.api-football.com/documentation#countries-requests)

This endpoint does not require any parameters

`FootballApi::Country.all`

___

[Leagues](https://www.api-football.com/documentation#leagues-requests)

|Parameter | Type | Required | Description|
|----------|------|----------|------------|
|league_id | integer | false | Fails if field contains anything other than an integer|
|team_id | integer | false | Fails if field contains anything other than an integer|
|search | string | false | 3 characters minimum | Fails if field has anything other than alphabetic characters|
|country | string | false | Fails if field contains anything other than alpha-numeric characters, underscores or dashes|
|code | string | false | 2 characters | Fails if field has anything other than alphabetic characters | Ex : FR, GB, IT…|
|season | integer | false | Fails if field contains anything other than an integer [YYYY]|
|current | string | false | Fails if field has anything other than alphabetic characters|
|type | string | false | Fails if field has anything other than alphabetic characters|

```
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
```

___


[Teams](https://www.api-football.com/documentation#teams-data-requests)

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
|team_id | integer false | Fails if field contains anything other than an integer|
|league_id | integer | false | Fails if field contains anything other than an integer|
|search | string | false | 3 characters minimum | Fails if field has anything other than alphabetic characters|


```
FootballApi::Teams::Data.find
FootballApi::Teams::Data.all_by_league
FootballApi::Teams::Data.search
```

___


[Team Statistics](https://www.api-football.com/documentation#teams-statistics-requests)

| Parameter | Type | Required | Description |
|----------|-------|----------|-------------|
| league_id | integer | true | Fails if field contains anything other than an integer |
| team_id | integer | true | Fails if field contains anything other than an integer |
| date | string | false | Fails if field does not contain a valid date : [YYYY-MM-DD] |


```
FootballApi::Teams::Statistic.all_by_league_and_team
FootballApi::Teams::Statistic.all_by_league_and_team_and_date
```

___


[Standings](https://www.api-football.com/documentation#standings-requests)

```
FootballApi::Standing.all_by_league
```

___


[Rounds](https://www.api-football.com/documentation#fixtures-rounds-requests)

```
FootballApi::Fixtures::Round.all_by_league
FootballApi::Fixtures::Round.all_by_league_and_current
```

___


[Fixtures](https://www.api-football.com/documentation#fixtures-fixtures-requests)

```
FootballApi::Fixtures::Fixture.find
FootballApi::Fixtures::Fixture.all_live
FootballApi::Fixtures::Fixture.all_live_and_several_leagues
FootballApi::Fixtures::Fixture.all_by_date
FootballApi::Fixtures::Fixture.all_by_league
FootballApi::Fixtures::Fixture.all_by_league_and_date
FootballApi::Fixtures::Fixture.all_by_league_and_round
FootballApi::Fixtures::Fixture.next_n_by_league
FootballApi::Fixtures::Fixture.last_n_by_league
```

___

[H2h](https://www.api-football.com/documentation#fixtures-h2h-requests)

```
FootballApi::Fixtures::H2h.all_by_team
```

___

[Fixture Statistics](https://www.api-football.com/documentation#fixtures-statistics-requests)

```
FootballApi::Fixtures::Statistic.all_by_fixture
```

___

[Fixtures Events](https://www.api-football.com/documentation#fixtures-events-requests)

```
FootballApi::Fixtures::Event.all_by_fixture
```

___

[Fixtures Lineups](https://www.api-football.com/documentation#fixtures-lineups-requests)

```
FootballApi::Fixtures::Lineup.all_by_fixture
```

___

[Predictions](https://www.api-football.com/documentation#predictions-requests)

```
FootballApi::Prediction.all_by_fixture
```

___


[Coachs](https://www.api-football.com/documentation#coachs-requests)

```
FootballApi::Coach.find
FootballApi::Coach.all_by_team
FootballApi::Coach.search
```

___


[Players Seasons](https://www.api-football.com/documentation#players-seasons-requests)

```
FootballApi::Players::Season.all
```

___


[Players Top Scorers](https://www.api-football.com/documentation#players-top-scorers-requests)

```
FootballApi::Players::TopScorer.all_by_league
```

___


[Players Search](https://www.api-football.com/documentation#players-search-requests)

```
FootballApi::Players::Search.all_by_name
```

___


[Players Squad](https://www.api-football.com/documentation#players-squad-requests)

```
FootballApi::Players::Squad.all_by_team_and_season
```

___


[Players Statistics Seasons](https://www.api-football.com/documentation#players-statistics-seasons-requests)

```
FootballApi::Players::StatisticsSeason.all_by_player
FootballApi::Players::StatisticsSeason.all_by_player_and_season
FootballApi::Players::StatisticsSeason.all_by_team_and_season
```

___


[Players Statistics Fixtures](https://www.api-football.com/documentation#players-statistics-fixtures-requests)

```
FootballApi::Players::StatisticsFixture.by_fixture
```

___


[Transfers](https://www.api-football.com/documentation#transfers-requests)

```
FootballApi::Transfer.all_by_player
FootballApi::Transfer.all_by_team
```

___


[Trophies](https://www.api-football.com/documentation#trophies-requests)

```
FootballApi::Trophey.all_by_player
FootballApi::Trophey.all_by_coach
```

___


[Sidelined](https://www.api-football.com/documentation#sidelined-requests)

```
FootballApi::Sideline.all_by_player
FootballApi::Sideline.all_by_coach
```

___


[Odds Bookmakers](https://www.api-football.com/documentation#odds-bookmakers-requests)

```
FootballApi::Odds::Bookmaker.all
FootballApi::Odds::Bookmaker.find
```

___


[Odds Labels](https://www.api-football.com/documentation#odds-labels-requests)

```
FootballApi::Odds::Label.all
FootballApi::Odds::Label.find
```

___


[Odds Mapping](https://www.api-football.com/documentation#odds-mapping-requests)

```
FootballApi::Odds::Mapping.all
```

___


[Odds](https://www.api-football.com/documentation#odds-odds-requests)

```
FootballApi::Odds::Odd.all_by_fixture
FootballApi::Odds::Odd.all_by_date
FootballApi::Odds::Odd.all_by_date_and_bookmaker
FootballApi::Odds::Odd.all_by_fixture_and_bookmaker
FootballApi::Odds::Odd.all_by_fixture_and_label
FootballApi::Odds::Odd.all_by_league
FootballApi::Odds::Odd.all_by_league_and_bookmaker
FootballApi::Odds::Odd.all_by_league_and_label
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/radkomih/football_api.

