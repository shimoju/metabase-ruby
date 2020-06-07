# frozen_string_literal: true

module Metabase
  module Endpoint
    module Public
      # Fetch the public card.
      #
      # @param card_uuid [String] Card UUID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuid
      def public_card(card_uuid, **params)
        get("/api/public/card/#{card_uuid}", **params)
      end

      # Fetch query results of the public card with metadata.
      #
      # @param card_uuid [String] Card UUID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuidquery
      def query_public_card_with_metadata(card_uuid, **params)
        get("/api/public/card/#{card_uuid}/query", **params)
      end

      # Fetch query results of the public card.
      #
      # @param card_uuid [String] Card UUID
      # @param format [Symbol, String] Export format (csv, json, xlsx)
      # @param params [Hash] Query string
      # @return [Array<Hash>, String] Query results
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuidqueryexport-format
      def query_public_card(card_uuid, format: :json, **params)
        get("/api/public/card/#{card_uuid}/query/#{format}", **params)
      end
    end
  end
end
