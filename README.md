# Cik

A Central Index Key or CIK number is a number given to an individual or company by the [United States Securities and
Exchange Commission (SEC)](http://www.sec.gov). The number is used to identify the filings of a company in the [EDGAR
database](http://www.sec.gov/edgar/searchedgar/companysearch.html).

This gem allows to look up the EDGAR database by symbol to get the company CIK.

## Installation

Add this line to your application's Gemfile:

    gem 'cik'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cik

## Usage

Usage is pretty simple:

```ruby
Cik.lookup('CSCO')
```

The response is a Hash with this format:

| Key       | Description |
| ----------| ----------- |
| cik       | CIK number  |
| name      | Entity name |
| sic       | SIC (Standard Industrial Classification) code |
| address   | Entity address |
| phone     | Entity phone |

## Contributing

1. Fork it ( http://github.com/javiervidal/cik/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

Copyright (c) 2014 – ∞ Javier Vidal

## License

This gem is released under the [MIT License](http://opensource.org/licenses/MIT).