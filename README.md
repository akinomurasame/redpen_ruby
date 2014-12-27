# RedpenRuby

RedpenRuby is a Ruby wrapper for [redpen: a text inspection tool](https://github.com/recruit-tech/redpen).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'redpen_ruby'
```

And then execute:

    $ bundle install --path vendor/bundle --binstubs vendor/bundle/bin

Or install it yourself as:

    $ gem install redpen_ruby

## Usage

Usage CLI:

    $ bundle exec redpen_ruby /path/to/config.xml /path/to/target_file

Usage Ruby script:

```ruby
require 'redpen_ruby'

config_file = './lib/redpen-cli-1.0/conf/redpen-conf-en.xml'
target_file = './lib/redpen-cli-1.0/sample-doc/en/sampledoc-en.md'

redpen = RedpenRuby.check(config, target)

if redpen.valid?
  puts 'Ok, Valid!'
else
  puts redpen.messages
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/redpen_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
