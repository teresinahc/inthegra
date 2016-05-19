require 'faraday_middleware'

module Inthegra
  # Wrapper for the faraday connection
  module Connection
    private

    def connection
      options = {
        :headers => {
          "Content-Type": "application/json",
					"Date": Time.now.strftime("%a, %d %b %Y %H:%M:%S GMT"),
					"X-Api-Key": api_key,
          "User-Agent" => user_agent
        },
        :url => endpoint
      }

      Faraday.new(options) do |connection|
        connection.use FaradayMiddleware::Inthegra, auth_token
        connection.use Faraday::Response::ParseJson

        connection.adapter :net_http
      end
    end

  end
end
