# frozen_string_literal: true

module Metabase
  module Endpoint
    module Util
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiutillogs
      def logs(**params)
        get('/api/util/logs', params)
      end
    end
  end
end
