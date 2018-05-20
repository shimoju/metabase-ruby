# frozen_string_literal: true

module Metabase
  module Endpoint
    module Setting
      def settings(params = {})
        get('/api/setting', params)
      end
    end
  end
end
