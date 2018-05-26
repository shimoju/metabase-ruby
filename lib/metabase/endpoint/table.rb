# frozen_string_literal: true

module Metabase
  module Endpoint
    module Table
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apitable
      def tables(**params)
        get('/api/table', params)
      end
    end
  end
end
