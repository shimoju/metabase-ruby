# frozen_string_literal: true

module Metabase
  module Endpoint
    module Async
      def running_jobs(**params)
        get('/api/async/running-jobs', params)
      end
    end
  end
end
