# frozen_string_literal: true

module Metabase
  module Endpoint
    module Segment
      def segments(params = {})
        get('/api/segment', params)
      end
    end
  end
end
