# frozen_string_literal: true

module Metabase
  module Endpoint
    module Database
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidatabase
      def databases(**params)
        get('/api/database', params)
      end
    end
  end
end
