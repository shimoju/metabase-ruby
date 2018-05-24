# frozen_string_literal: true

module Metabase
  module Endpoint
    module Public
      def public_card(card_uuid, **params)
        get("/api/public/card/#{card_uuid}", params)
      end
    end
  end
end
