module Inthegra
  module Configuration

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

    def self.extended(base)
      base.set_default_values
    end

    def configure
      yield self
    end

    def set_default_values
      self.endpoint = DEFAULT_ENDPOINT
    end

    def options
      VALID_OPTIONS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

  end
end
