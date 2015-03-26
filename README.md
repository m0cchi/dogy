# Dogy

create command line tools

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dogy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dogy

## Usage

```
# filename: fib.rb
#!/usr/bin/env ruby
def fib n
  return n < 2 ? n : ->{
    fib(n - 2) + fib(n - 1)
  }.call  
end
# require
require 'dogy'
```

```
$ ./fib.rb fib 10
55
```

## Contributing

1. Fork it ( https://github.com/mocchit/dogy/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
