# Inthegra

Ruby wrapper for the STRANS-PI Inthegra API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inthegra'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inthegra

## Usage

Require the inthegra gem and add the basic configuration:

```ruby
require 'inthegra'

Inthegra.configure do |config|
  config.email = YOUR_INTHEGRA_EMAIL
  config.password = YOUR_INTHEGRA_PASSWORD
  config.api_key = YOUR_INTHEGRA_API_KEY
end
```

Create a new client instance and authenticate with the API.

```ruby
client = Inthegra::Client.new

client.authenticate
```
Remeber: The inthegra API expires the auth_token after every 10 minutes.

Now you can retrieve the API data.

```ruby
client.vehicles
```

### Get all lines

```ruby
client.lines
```

### Search line by query string

Searching all line with 'ininga' keyword.

```ruby
client.line_search('ininga')
```

### Get all bus stops

```ruby
client.bus_stops
```

### Search bus stops by query string

Searching all bus stops with 'ininga' keyword.

```ruby
client.bus_stops_search('ininga')
```

### Search bus stops by line

Searching all bus stops of the 402 line code.

```ruby
client.bus_stops_by_line('0402')
```

### Get vehicles

```ruby
client.vehicles
```

### Search vehicles by line

Searching vehicles of the 402 line code.

```ruby
client.vehicles_by_line('0402')
```

## Documentation

You can see then documentation in http://www.rubydoc.info/gems/inthegra/0.1.0.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/teresinahc/inthegra.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
