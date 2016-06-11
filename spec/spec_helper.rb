require 'simplecov'
SimpleCov.start do
  add_group 'Inthegra', 'lib/inthegra'
  add_group 'Inthegra Model', 'lib/model'
  add_group 'Inthegra Client', 'lib/client'
  add_group 'Specs', 'spec'
end

require File.expand_path('../../lib/inthegra', __FILE__)

require 'rspec'
require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
end
