# frozen_string_literal: true

module Metabase
  module Endpoint
    module Metric
      def metrics(**params)
        get('/api/metric', params)
      end
    end
  end
end
