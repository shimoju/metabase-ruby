# frozen_string_literal: true

module Metabase
  module Endpoint
    module Card
      # Fetch all cards.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicard
      def cards(**params)
        get('/api/card', **params)
      end

      # Fetch the card.
      #
      # @param card_id [Integer, String] Card ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicardid
      def card(card_id, **params)
        get("/api/card/#{card_id}", **params)
      end

      # Fetch query results of the card with metadata.
      #
      # @param card_id [Integer, String] Card ID
      # @param params [Hash] Request body
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicardcard-idquery
      def query_card_with_metadata(card_id, **params)
        post("/api/card/#{card_id}/query", **params)
      end

      # Fetch query results of the card.
      #
      # @param card_id [Integer, String] Card ID
      # @param format [Symbol, String] Export format (csv, json, xlsx)
      # @param params [Hash] Request body
      # @return [Array<Hash>, String] Query results
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicardcard-idqueryexport-format
      def query_card(card_id, format: :json, **params)
        post("/api/card/#{card_id}/query/#{format}", **params)
      end

      # Update a card.
      #
      # @param card_id [Integer, String] Card ID
      # @param params [Hash] Request body
      # @return [Array<Hash>, String] Query results
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicardcard-idqueryexport-format
      def update_card(card_id, **params)
        put("/api/card/#{card_id}", **params)
      end
    end
  end
end
