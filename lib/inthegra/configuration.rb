module Inthegra
  module Configuration

    # Default options of the configuration module
    VALID_OPTIONS = [
      :email,
      :password,
      :api_key,
      :auth_token,
      :proxy,

      :user_agent,
      :endpoint
    ]

    attr_accessor *VALID_OPTIONS

    DEFAULT_ENDPOINT = 'https://api.inthegra.strans.teresina.pi.gov.br/v1'

    # Set default value when this methods is extented
    def self.extended(base)
      base.set_default_values
    end

    def configure
      yield self
    end

    def set_default_values
      self.endpoint = DEFAULT_ENDPOINT
    end

    # Return the array of options
    def options
      VALID_OPTIONS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

  end
end
