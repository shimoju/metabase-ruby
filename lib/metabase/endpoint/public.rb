# frozen_string_literal: true

module Metabase
  module Endpoint
    module Public
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuid
      def public_card(card_uuid, **params)
        get("/api/public/card/#{card_uuid}", params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuidquery
      def query_public_card_with_metadata(card_uuid, **params)
        get("/api/public/card/#{card_uuid}/query", params)
      end

      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipubliccarduuidqueryexport-format
      def query_public_card(card_uuid, format: :json, **params)
        get("/api/public/card/#{card_uuid}/query/#{format}", params)
      end
    end
  end
end
