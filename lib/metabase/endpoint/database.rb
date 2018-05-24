# frozen_string_literal: true

module Metabase
  module Endpoint
    module Database
      def databases(**params)
        get('/api/database', params)
      end
    end
  end
end
