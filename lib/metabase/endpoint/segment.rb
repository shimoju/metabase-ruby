# frozen_string_literal: true

module Metabase
  module Endpoint
    module Segment
      # Fetch all segments.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apisegment
      def segments(**params)
        get('/api/segment', **params)
      end
    end
  end
end
