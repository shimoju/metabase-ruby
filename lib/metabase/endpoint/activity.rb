# frozen_string_literal: true

module Metabase
  module Endpoint
    module Activity
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiactivity
      def activities(**params)
        get('/api/activity', params)
      end
    end
  end
end
