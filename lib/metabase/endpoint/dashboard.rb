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

      # Copy a dashboard.
      #
      # @param from_dashboard_id [Integer, String] Dashboard ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apidashboardfrom-dashboard-idcopy
      def copy_dashboard(from_dashboard_id, **params)        
        post("/api/dashboard/#{from_dashboard_id}/copy", **params)
      end

      # Add a Card to a Dashboard.
      #
      # @param dashboard_id [Integer, String] Dashboard ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apidashboardidcards
      def add_dashboard_card(dashboard_id, **params)        
        post("/api/dashboard/#{dashboard_id}/cards", **params)
      end      

      # Update Cards on a Dashboard.
      #
      # @param dashboard_id [Integer, String] Dashboard ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#put-apidashboardidcards
      def update_dashboard_cards(dashboard_id, **params)        
        put("/api/dashboard/#{dashboard_id}/cards", **params)
      end

      # Remove a DashboardCard from a Dashboard.
      #
      # @param dashboard_id [Integer, String] Dashboard ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#delete-apidashboardidcards
      def delete_dashboard_card(dashboard_id, **params)        
        delete("/api/dashboard/#{dashboard_id}/cards", **params)
      end
    end
  end
end
