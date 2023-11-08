# frozen_string_literal: true

module Metabase
  module Endpoint
    module Search
      def search(**params)
        get('/api/search', **params)
      end

      def search_models(**params)
        get('/api/search/models', **params)
      end
    end
  end
end
