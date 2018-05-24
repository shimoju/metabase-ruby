# frozen_string_literal: true

module Metabase
  module Endpoint
    module Card
      def cards(**params)
        get('/api/card', params)
      end

      def card(card_id, **params)
        get("/api/card/#{card_id}", params)
      end

      def query_card(card_id, format: :json, **params)
        post("/api/card/#{card_id}/query/#{format}", params)
      end
    end
  end
end
