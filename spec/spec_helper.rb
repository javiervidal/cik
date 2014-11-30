require 'simplecov'
SimpleCov.start

require 'coveralls'
Coveralls.wear!

require 'cik'
require 'webmock/rspec'

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "http://www.sec.gov/cgi-bin/browse-edgar?CIK=CSCO&action=getcompany").
      with(:headers => {'Accept' => '*/*'}).
      to_return(:status => 200, :body => fixture('csco.html'), :headers => {})
    stub_request(:get, "http://www.sec.gov/cgi-bin/browse-edgar?CIK=ZZZZ&action=getcompany").
      with(:headers => {'Accept' => '*/*'}).
      to_return(:status => 200, :body => "", :headers => {})
  end
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
