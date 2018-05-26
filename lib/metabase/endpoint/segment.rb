# frozen_string_literal: true

module Metabase
  module Endpoint
    module Segment
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apisegment
      def segments(**params)
        get('/api/segment', params)
      end
    end
  end
end
