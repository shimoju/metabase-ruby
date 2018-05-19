# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dashboard
      def dashboards(params = {})
        get('/api/dashboard', params)
      end
    end
  end
end
