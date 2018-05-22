# frozen_string_literal: true

module Metabase
  module Endpoint
    module Session
      # Login to Metabase.
      #
      # @param params [Hash] Request body
      # @return [String] Session token
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apisession
      def login(params = {})
        params = { username: @username, password: @password }.merge(params)
        response = post('/api/session', params)
        @token = response['id']
      end

      def logout(params = {})
        params = { session_id: @token }.merge(params)
        delete('/api/session', params)
        @token = nil
        true
      end
    end
  end
end
