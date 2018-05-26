# frozen_string_literal: true

module Metabase
  module Endpoint
    module Alert
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apialert
      def alerts(**params)
        get('/api/alert', params)
      end
    end
  end
end
