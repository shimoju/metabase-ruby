module Metabase
  module Endpoint
    module Session
      def login
        params = { username: @username, password: @password }
        response = @connection.post '/api/session', params
        error = Error.from_response(response)
        raise error if error
        @token = response.body['id']
      end
    end
  end
end
