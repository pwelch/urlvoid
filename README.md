# URLVoid API Gem

Ruby Gem for [URLVoid API](http://www.urlvoid.com/api/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'urlvoid'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install urlvoid

## Usage

### URLVoid Host Response

```ruby
require 'urlvoid'

api_key = 'MY_API_KEY'

urlvoid = URLVoid::Host.info(api_key, 'google.com')

# API Response
urlvoid.response
# =>
{"details"=>
  {"host"=>"google.com",
   "updated"=>"1438544337",
   "http_response_code"=>"200",
   "domain_age"=>"874296000",
   "google_page_rank"=>"9",
   "alexa_rank"=>"1",
   "connect_time"=>"0.028592",
   "header_size"=>"840",
   "download_size"=>"44685",
   "speed_download"=>"309084",
   "external_url_redirect"=>nil,
   "ip"=>
    {"addr"=>"216.58.211.78",
     "hostname"=>"par03s14-in-f14.1e100.net",
     "asn"=>"15169",
     "asname"=>"Google Inc.",
     "country_code"=>"US",
     "country_name"=>"United States",
     "region_name"=>"California",
     "city_name"=>"Mountain View",
     "continent_code"=>"NA",
     "continent_name"=>"North America",
     "latitude"=>"37.4192",
     "longitude"=>"-122.057"}},
 "detections"=>{"engines"=>{"engine"=>"PhishTank"}, "count"=>"1"},
 "page_load"=>"0.00"}

# API Reponse Detections
urlvoid.detections
# =>  {"engines"=>{"engine"=>"PhishTank"}, "count"=>"1"}
```

### URLVoid API Queries Remaining

```ruby
require 'urlvoid'

api_key = 'MY_API_KEY'

URLVoid::Stats.remaining_queries(api_key)
# => 901
```

## Contributing

1. Fork it ( https://github.com/pwelch/urlvoid/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
