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

      # Fetch a collection.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollectionid
      def collection(collection_id, **params)
        get("/api/collection/#{collection_id}", **params)
      end

      # Fetch a collection's items.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollectioniditems
      def collection_items(collection_id, **params)
        get("/api/collection/#{collection_id}/items", **params)
      end

      # Create a new collection.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicollection
      def new_collection(**params)        
        post('/api/collection', **params)
      end
    end
  end
end
