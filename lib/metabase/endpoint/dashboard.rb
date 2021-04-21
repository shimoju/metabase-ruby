# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dashboard
      # Fetch all dashboards.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboard
      def dashboards(**params)
        get('/api/dashboard', **params)
      end

      # Fetch the dashboard.
      #
      # @param dashboard_id [Integer, String] Dashboard ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboardid
      def dashboard(dashboard_id, **params)
        get("/api/dashboard/#{dashboard_id}", **params)
      end      

      # Create a new dashboard.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apidashboard
      def new_dashboard(**params)        
        post('/api/dashboard', **params)
      end
    end
  end
end
