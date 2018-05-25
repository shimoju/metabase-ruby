# frozen_string_literal: true

module Metabase
  module Endpoint
    module Public
      def public_card(card_uuid, **params)
        get("/api/public/card/#{card_uuid}", params)
      end

      def query_public_card_with_metadata(card_uuid, **params)
        get("/api/public/card/#{card_uuid}/query", params)
      end

      def query_public_card(card_uuid, format: :json, **params)
        get("/api/public/card/#{card_uuid}/query/#{format}", params)
      end
    end
  end
end
