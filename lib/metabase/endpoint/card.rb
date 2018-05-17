# frozen_string_literal: true

module Metabase
  module Endpoint
    module Card
      def cards
        get('/api/card')
      end
    end
  end
end
