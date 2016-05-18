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
