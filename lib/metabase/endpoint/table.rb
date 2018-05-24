# frozen_string_literal: true

module Metabase
  module Endpoint
    module Table
      def tables(**params)
        get('/api/table', params)
      end
    end
  end
end
