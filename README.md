# CapybaraApiHelpers

Simple helpers for testing an API with Capybara and rspec.

[You're not supposed to test APIs with Capybara](http://www.elabs.se/blog/34-capybara-and-testing-apis),
but sometimes it's convenient.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capybara_api_helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara_api_helpers

In your `spec_helper.rb`, add this line:

`config.include CapybaraApiHelpers, type: :feature`

## Usage

In your specs, you can now test your api with the methods `hit_api` (which defaults to GET),
`put_api`, and `post_api`. They will do what (I hope) is expected, and will use the JSON format.

Here's an example:

```ruby
response = hit_api 'v2/things'

expect(response.size).to eq 5

first_thing = things.first

expect(first_thing['name']).to eq 'Chapstick'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capybara_api_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## About Foraker Labs

<img src="http://assets.foraker.com/foraker_logo.png" width="400" height="62">

This project is maintained by Foraker Labs. The names and logos of Foraker Labs are fully owned and copyright Foraker Design, LLC.

Foraker Labs is a Boulder-based Ruby on Rails and iOS development shop. Please reach out if we can [help build your product](http://www.foraker.com).
