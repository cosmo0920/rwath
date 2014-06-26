# Rwath

`rwath` is simple wrapper for Swath(Smart Word Analysis for THai).

## Installation

Before you use `rwath`, please install `swath`.

### Debian like Linux distributions

```bash
$ sudo apt get install swath
```

### OSX with homebrew

Using my unoffical formula of `swath`:

```bash
$ brew tap cosmo0920/tokenizers
$ brew install cosmo0920/tokenizers/swath
```

Add this line to your application's Gemfile:

    gem 'rwath'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rwath

## Usage

```ruby
conf = Rwath::Config.new
conf.delimitor(char: ' ')
conf.encode(input: :utf8, output: :utf8)
rwath = Rwath.new(config: conf.setting)
text = "ตัวอักษรไทยเป็นเรื่องยาก"
puts result = rwath.split(text) # => ตัว อักษร ไทย เป็น เรื่อง ยาก
```

## Contributing

1. Fork it ( https://github.com/cosmo0920/rwath/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
