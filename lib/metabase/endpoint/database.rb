# frozen_string_literal: true

module Metabase
  module Endpoint
    module Database
      # Fetch all databases.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidatabase
      def databases(**params)
        get('/api/database', params)
      end
    end
  end
end
