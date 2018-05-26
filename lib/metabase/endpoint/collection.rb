# frozen_string_literal: true

module Metabase
  module Endpoint
    module Collection
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollection
      def collections(**params)
        get('/api/collection', params)
      end
    end
  end
end
