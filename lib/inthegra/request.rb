module Inthegra
  module Request

    def get(path, options = {})
      request(:get, path, options)
    end

    def post(path, options = {})
      request(:post, path, options)
    end

    private
    def request(method, path, options)
      if !auth_token and path != 'signin'
        # Throws exception when the user request a diferente url
        # that requires authentication and not have the auth_token.
        raise Unauthenticated, 'You need autenticate to use this resource. Use the method Client#authentication.'
      end

      response = connection.send(method) do |request|
        path = URI.encode(path)

        case method
        when :get
          request.url(path, options)
        when :post
          request.path = path
          request.body = options.to_json
        end
      end

      response.body
    end

  end
end
