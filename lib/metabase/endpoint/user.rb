# frozen_string_literal: true

module Metabase
  module Endpoint
    module User
      # Fetch all users.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiuser
      def users(**params)
        get('/api/user', params)
      end

      # Fetch the current user.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiusercurrent
      def current_user(**params)
        get('/api/user/current', params)
      end
      
      def create_user(**params)
        post('/api/user', params)
      end
    end
  end
end
