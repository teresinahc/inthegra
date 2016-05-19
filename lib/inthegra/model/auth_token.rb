module Inthegra
  class AuthToken < BaseModel

    # @return [String] the auth token
    attr_reader :token

    # @return [Time] time when the token expire
    attr_reader :expires_in

    private
    def fill(data)
      @token = data['token']
      @expires_in = Time.now + (data['token'].to_i * 60)
    end

  end
end
