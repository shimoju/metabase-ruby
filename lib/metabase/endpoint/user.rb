module Metabase
  module Endpoint
    module User
      def current_user
        response = @connection.get do |req|
          req.url '/api/user/current'
          req.headers['X-Metabase-Session'] = @token
        end

        error = Error.from_response(response)
        raise error if error
        response.body
      end
    end
  end
end
