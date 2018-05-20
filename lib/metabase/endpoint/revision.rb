# frozen_string_literal: true

module Metabase
  module Endpoint
    module Revision
      def revisions(params = {})
        get('/api/revision', params)
      end
    end
  end
end
