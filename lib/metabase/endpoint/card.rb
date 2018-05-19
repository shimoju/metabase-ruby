# frozen_string_literal: true

module Metabase
  module Endpoint
    module Card
      def cards(params = {})
        get('/api/card', params)
      end
    end
  end
end
