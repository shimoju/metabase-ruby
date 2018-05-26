# frozen_string_literal: true

module Metabase
  module Endpoint
    module Async
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiasyncrunning-jobs
      def running_jobs(**params)
        get('/api/async/running-jobs', params)
      end
    end
  end
end
