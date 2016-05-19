

module Inthegra
  class Client
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include Connection
    include Request

    include Lines
    include BusStops

    attr_accessor *Configuration::VALID_OPTIONS

    # Creates a new Client
    def initialize(options={})
      options = Inthegra.options.merge(options)

      Configuration::VALID_OPTIONS.each do |key|
        send("#{key}=", options[key])
      end
    end

    # Authenticate the client and set the auth_token
    # @return Authtoken
    def authenticate
      response = post('signin', { email: email, password: password })
      self.auth_token = AuthToken.new(response)
    end
  end
end
