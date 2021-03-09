# ErickLoza

This is a simple gem to calculate the edit distance of 2 words

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'erick_loza'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install erick_loza

## Usage

```ruby
require 'erick_loza'

calc = ErickLoza::EditDistance.new('word1', 'word2')
distance = calc.calculate()

# If you need the matrix of the previous calculation
# call `matrix` on the EditDistance object
matrix = calc.matrix.to_s
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`,
which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JohnLoza/sample_gem.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
