require "time"
require "json/ext"
require "faraday"

require "inthegra/error"

require "faraday/inthegra"

require "inthegra/version"
require 'inthegra/configuration'
require 'inthegra/connection'
require 'inthegra/request'
require 'inthegra/client'

require 'inthegra/model/base'
require 'inthegra/model/auth_token'
require 'inthegra/model/line'
require 'inthegra/model/bus_stop'
require 'inthegra/model/vehicle'

require 'inthegra/serializer/base'
require 'inthegra/serializer/collection'
require 'inthegra/serializer/vehicles'

module Inthegra
  extend Configuration
end
