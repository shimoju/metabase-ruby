# frozen_string_literal: true

module Metabase
  module Endpoint
    module Collection
      # Fetch all collections.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollection
      def collections(**params)
        get('/api/collection', **params)
      end

      # Fetch a specific collection.
      #
      # @param collection_id [Integer, String] Collection ID
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollectionid
      def collection(collection_id, **params)
        get("/api/collection/#{collection_id}", **params)
      end

      # Fetch a specific collection items.
      #
      # @param collection_id [Integer, String] Collection ID
      # @param model [String] value may be nil, or if non-nil, value must be one of: card, collection, dashboard, pulse, snippet.
      # @param archived [Boolean]
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollectioniditems
      def collection_items(collection_id, **params)
        get("/api/collection/#{collection_id}/items", **params)
      end
    end
  end
end
