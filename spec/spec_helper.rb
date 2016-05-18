require 'simplecov'
SimpleCov.start do
  add_group 'Inthegra', 'lib/inthegra'
  add_group 'Specs', 'spec'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'webmock/rspec'

RSpec.configure do |config|
  config.include WebMock::API
end

def a_get(path)
  a_request(:get, Inthegra.endpoint + path)
end

def a_post(path)
  a_request(:post, Inthegra.endpoint + path)
end

def stub_get(path)
  stub_request(:get, Inthegra.endpoint + path)
end

def stub_post(path)
  stub_request(:post, Inthegra.endpoint + path)
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
