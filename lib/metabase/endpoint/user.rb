# frozen_string_literal: true

module Metabase
  module Endpoint
    module User
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiuser
      def users(**params)
        get('/api/user', params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiusercurrent
      def current_user(**params)
        get('/api/user/current', params)
      end
    end
  end
end
