# frozen_string_literal: true

module Metabase
  module Endpoint
    module XRay
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apix-raycardid
      def x_ray_card(card_id, **params)
        get("/api/x-ray/card/#{card_id}", params)
      end
    end
  end
end
