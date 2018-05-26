# frozen_string_literal: true

module Metabase
  module Endpoint
    module Activity
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiactivity
      def activities(**params)
        get('/api/activity', params)
      end
    end
  end
end
