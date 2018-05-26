# frozen_string_literal: true

module Metabase
  module Endpoint
    module Revision
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apirevision
      def revisions(**params)
        get('/api/revision', params)
      end
    end
  end
end
