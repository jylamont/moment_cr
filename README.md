# moment_cr

Natural language Date/Time parser for Crystal. Using MomentLib: https://github.com/momentlib/core.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  moment_cr:
    github: jylamont/moment_cr
```

## Usage

```crystal
require "moment_cr"

MomentCr.parse("tomorrow 9am")
```

For more information, see https://github.com/momentlib/core.

## Contributing

1. Fork it ( https://github.com/jylamont/moment_cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [jylamont](https://github.com/jylamont) James Lamont - creator, maintainer
