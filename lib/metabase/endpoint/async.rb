# frozen_string_literal: true

module Metabase
  module Endpoint
    module Async
      # Fetch all running jobs.
      #
      # @param params [Hash] Query string
      # @return [Array<Integer>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiasyncrunning-jobs
      def running_jobs(**params)
        get('/api/async/running-jobs', params)
      end
    end
  end
end
