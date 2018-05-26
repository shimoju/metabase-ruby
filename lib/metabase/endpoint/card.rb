# frozen_string_literal: true

module Metabase
  module Endpoint
    module Card
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicard
      def cards(**params)
        get('/api/card', params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicardid
      def card(card_id, **params)
        get("/api/card/#{card_id}", params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicardcard-idquery
      def query_card_with_metadata(card_id, **params)
        post("/api/card/#{card_id}/query", params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicardcard-idqueryexport-format
      def query_card(card_id, format: :json, **params)
        post("/api/card/#{card_id}/query/#{format}", params)
      end
    end
  end
end
