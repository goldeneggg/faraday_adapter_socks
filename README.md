FaradayAdapterSocks [![Build Status](https://travis-ci.org/goldeneggg/faraday_adapter_socks.svg?branch=master)](https://travis-ci.org/goldeneggg/faraday_adapter_socks)
==========

Faraday adapter for socks proxy

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_adapter_socks'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install faraday_adapter_socks

## Usage

Adapter symbol `:net_http_socks` should be set to `faraday_adapter`

Example: faraday connection

```ruby
require 'faraday_adapter_socks'

options = { proxy: { uri: URI.parse("socks://#{your_socks_server}") } }

conn = Faraday.new(url, options) do |faraday|
  faraday.request :url_encoded
  faraday.adapter :net_http_socks  # please assign ":net_http_socks" adapter
end

response = conn.get do |req|
  req.url request_path
end
```

Example: get oauth2 client using [intridea/oauth2](https://github.com/intridea/oauth2)

```ruby
require 'faraday_adapter_socks'

client_options = { connection_opts: { proxy: { uri: URI.parse("socks://#{your_socks_server}") } }

client = ::OAuth2::Client.new(client_id, client_secret, client_options) do |conn|
  conn.request :url_encoded
  conn.response :json, content_type: /\bjson$/
  conn.adapter :net_http_socks  # please assign ":net_http_socks" adapter
end
```

## Development

Setup

```bash
$ git clone https://github.com/goldeneggg/faraday_adapter_socks.git
$ bin/setup
```

Run tests

```bash
$ bundle exec rake spec
```

Debug using pry


```bash
$ bin/console
```

To release a new version, update the version number in `version.rb`.

## Contributing

Bug reports and pull requests are welcome on GitHub at [issues](https://github.com/goldeneggg1/faraday_adapter_socks/issues)

## Author

[goldeneggg](https://github.com/goldeneggg)
