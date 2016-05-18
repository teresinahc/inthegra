module Inthegra
  class Client

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

    include Connection
    include Request
  end
end
