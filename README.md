# HaloAPI
[![Gem Version](https://badge.fury.io/rb/halo-api.svg)](https://badge.fury.io/rb/halo-api)
[![Code Climate](https://codeclimate.com/github/xarlybovi/halo-api.png)](https://codeclimate.com/github/xarlybovi/halo-api)
[![Actions Status](https://github.com/xarlybovi/halo-api/workflows/CI/badge.svg)](https://github.com/xarlybovi/halo-api/actions)
[![codecov](https://codecov.io/gh/xarlybovi/halo-api/branch/master/graph/badge.svg?token=NJLMA4MDU1)](https://codecov.io/gh/xarlybovi/halo-api)

Wrapper for Halo Public API (BETA). https://developer.haloapi.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'halo-api', '~> 1.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install halo-api

## Usage

Basic configuration:
````ruby
Halo.configure do |config|
  config.api_key = ENV['HALO_API_KEY']
end
````

Configuration with redis and region (optional parameters)
````ruby
Halo.configure do |config|
  config.api_key = ENV['HALO_API_KEY']
  config.region  = ENV['HALO_REGION']  # default 'en'
  config.redis   = ENV['HALO_REDIS']
  config.ttl     = ENV['HALO_TTL']     # default 1800
end
````

````ruby
halo5_client = Halo.halo5
# => Halo::Halo5
halo_wars2_client = Halo.halo_wars2
# => Halo::HaloWars2

h5_missions = halo5_client.metadata.campaign_missions
# => Array
h5_enemies  = halo5_client.metadata.enemies
# => Array
h5_player_appearance = halo5_client.profile(player: 'xarly bovi').player_appearance
# => Array
hw2_campaign_levels  = halo_wars2_client.metadata.campaign_levels
# => Array
hw2_seasons = halo_wars2_client.metadata.seasons
# => Array
````

## TODO

- [x] Halo 5 endpoints
- [x] Halo Wars 2 endpoints
- [x] Redis response caching support
- [ ] Request rate limiter
- [ ] Custom query builder
- [ ] Paged requests
- [ ] Documentation

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
