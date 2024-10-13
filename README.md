# Sinatra Social Share Button

A Sinatra helper to generate social share buttons.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sinatra_social_share_button'
And then execute:

bash

$ bundle install
Usage
ruby

require 'sinatra'
require 'sinatra_social_share_button'

class MyApp < Sinatra::Base
  helpers SinatraSocialShareButton::Helpers

  get '/' do
    social_share_button_tag("Check this out!", "http://example.com")
  end
end
Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/dcalixto/sinatra_social_share_button.
```
