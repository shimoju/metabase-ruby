# frozen_string_literal: true

module Metabase
  module Endpoint
    module Session
      def login(params = {})
        params = { username: @username, password: @password }.merge(params)
        response = post('/api/session', params)
        @token = response['id']
      end
    end
  end
end
