module Inthegra
  class AuthToken < BaseModel

    # the token hash
    attr_reader :token

    # token expiration date
    attr_reader :expires_in

    private
    def fill(data)
      @token = data['token']
      @expires_in = Time.now + (data['token'].to_i * 60)
    end

  end
end
