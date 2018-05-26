# frozen_string_literal: true

module Metabase
  module Endpoint
    module Collection
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollection
      def collections(**params)
        get('/api/collection', params)
      end
    end
  end
end
