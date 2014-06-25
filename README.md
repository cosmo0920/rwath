# Rwath

`rwath` is simple wrapper for Swath(Smart Word Analysis for THai).

## Installation

Add this line to your application's Gemfile:

    gem 'rwath'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rwath

## Usage

```ruby
require 'rwath'
rwath = Rwath.new(delimitor: " ")
text = "ตัวอักษรไทยเป็นเรื่องยาก"
puts result = rwath.split(text) # => ตัว อักษร ไทย เป็น เรื่อง ยาก
```

## Contributing

1. Fork it ( https://github.com/cosmo0920/rwath/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
