# frozen_string_literal: true

module Metabase
  module Endpoint
    module Session
      def login
        params = { username: @username, password: @password }
        response = post('/api/session', params)
        @token = response['id']
      end
    end
  end
end
