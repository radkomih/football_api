# FootballApi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/football_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

```
FootballApi.configure do |config|
  config.api_key = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
  config.api_host = 'https://www.api-football.com/demo/v2/'
end

FootballApi::Timezones.all
FootballApi::Seasons.all
FootballApi::Countries.all
FootballApi::Leagues.all
...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/football_api.

