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

    def set_new_token
      token = post('signin', { email: email, password: password })
      self.auth_token = token["token"]
    end

    include Connection
    include Request
  end
end
