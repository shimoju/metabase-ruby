# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dashboard
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboard
      def dashboards(**params)
        get('/api/dashboard', params)
      end
    end
  end
end
