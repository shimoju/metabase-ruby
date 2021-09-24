# frozen_string_literal: true

module Metabase
  module Endpoint
    module Activity
      # Fetch recent activities.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiactivity
      def activity(recent_views: false, **params)
        return get('/api/activity', **params) unless recent_views

        get('/api/activity/recent_views', **params)
      end
    end
  end
end
