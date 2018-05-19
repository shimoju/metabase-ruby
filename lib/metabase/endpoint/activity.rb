# frozen_string_literal: true

module Metabase
  module Endpoint
    module Activity
      def activities(params = {})
        get('/api/activity', params)
      end
    end
  end
end
