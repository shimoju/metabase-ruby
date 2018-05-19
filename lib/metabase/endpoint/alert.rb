# frozen_string_literal: true

module Metabase
  module Endpoint
    module Alert
      def alerts(params = {})
        get('/api/alert', params)
      end
    end
  end
end
