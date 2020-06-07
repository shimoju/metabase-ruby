# frozen_string_literal: true

module Metabase
  module Endpoint
    module Metric
      # Fetch all metrics.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apimetric
      def metrics(**params)
        get('/api/metric', **params)
      end
    end
  end
end
