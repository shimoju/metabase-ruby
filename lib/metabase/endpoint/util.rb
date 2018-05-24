# frozen_string_literal: true

module Metabase
  module Endpoint
    module Util
      def logs(**params)
        get('/api/util/logs', params)
      end
    end
  end
end
