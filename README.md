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

```ruby
{
  :cik => "0000858877",
  :name => "CISCO SYSTEMS, INC.",
  :sic => "3576"
}
```

| Key       | Description |
| ----------| ----------- |
| cik       | CIK number  |
| name      | Entity name |
| sic       | SIC (Standard Industrial Classification) code |

## How to Launch the Console

    $ rake console

## How to Run the Test Suite

    $ rspec

## Changelog

    [Changelog](https://github.com/javiervidal/cik/blob/master/CHANGELOG.md)

## Contributing

1. Fork it ( http://github.com/javiervidal/cik/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Code Status

[![Gem Version](http://img.shields.io/badge/gem-v1.0.1-blue.svg)](https://rubygems.org/gems/cik)
[![Build Status](https://travis-ci.org/javiervidal/cik.svg?branch=master)](https://travis-ci.org/javiervidal/cik)
[![Coverage Status](https://coveralls.io/repos/javiervidal/cik/badge.png?branch=master)](https://coveralls.io/r/javiervidal/cik?branch=master)
[![Code Climate](https://codeclimate.com/github/javiervidal/cik/badges/gpa.svg)](https://codeclimate.com/github/javiervidal/cik)

## Copyright

Copyright (c) 2014 – ∞ Javier Vidal

## License

This gem is released under the [MIT License](http://opensource.org/licenses/MIT).