# frozen_string_literal: true

module Metabase
  module Endpoint
    module XRay
      def x_ray_card(card_id, params = {})
        get("/api/x-ray/card/#{card_id}", params)
      end
    end
  end
end
