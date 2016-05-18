require "json/ext"
require "faraday"

require "faraday/inthegra"

require "inthegra/version"
require 'inthegra/configuration'
require 'inthegra/connection'
require 'inthegra/request'
require 'inthegra/client'

require 'inthegra/model/base'
require 'inthegra/model/auth_token'

module Inthegra
  extend Configuration
end
