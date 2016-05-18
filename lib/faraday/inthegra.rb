module FaradayMiddleware
  class Inthegra < Faraday::Middleware

    def call(env)
      if @auth_token
        env[:request_headers] = env[:request_headers].merge('X-Auth-Token' => @auth_token)
      end

      @app.call env
    end

    def initialize(app, auth_token = nil)
      @app = app
      @auth_token = auth_token
    end

  end
end
