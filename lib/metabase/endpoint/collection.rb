# frozen_string_literal: true

module Metabase
  module Endpoint
    module Collection
      def collections(**params)
        get('/api/collection', params)
      end
    end
  end
end
