# HaloAPI
[![Gem Version](https://badge.fury.io/rb/halo-api.svg)](https://badge.fury.io/rb/halo-api)
[![Dependency Status](https://gemnasium.com/badges/github.com/xarlybovi/halo-api.svg)](https://gemnasium.com/github.com/xarlybovi/halo-api)
[![Code Climate](https://codeclimate.com/github/xarlybovi/halo-api.png)](https://codeclimate.com/github/xarlybovi/halo-api)
[![Build Status](https://travis-ci.org/xarlybovi/halo-api.svg?branch=master)](https://travis-ci.org/xarlybovi/halo-api)
[![Coverage Status](https://coveralls.io/repos/github/xarlybovi/halo-api/badge.svg?branch=master)](https://coveralls.io/github/xarlybovi/halo-api?branch=master)

Wrapper for Halo Public API (BETA). https://developer.haloapi.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'halo-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install halo-api

## Usage

Basic example:
````ruby
Halo.configure do |config|
  config.api_key = ENV['HALO_API_KEY']
  config.region  = ENV['HALO_REGION']
end
````

````ruby
metadata = Halo.h5_metadata

missions = metadata.campaign_missions.all

````

## TODO

- [x] Halo 5 endpoints
- [ ] Halo Wars 2 endpoints

## Contributing

Bug reports and pull requests are welcome!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
