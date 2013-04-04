# Cada

Easy to read helpers to execute something every month, day, etc. This is not a scheduler. Best understood by:

    Cada.month '2012-01-03'.to_date, '2012-04-01' do |date|
      puts "#{date.month}, #{date.day}"
    end

The above will output:

    1, 3
    2, 3
    3, 3

You can use anything that Numeric responds to. For example, these will work:

- second/s
- minute/s
- week/s
- month/s
- fortnight/s

## Installation

Add this line to your application's Gemfile:

    gem 'cada'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cada

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
