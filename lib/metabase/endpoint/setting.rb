# frozen_string_literal: true

module Metabase
  module Endpoint
    module Setting
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apisetting
      def settings(**params)
        get('/api/setting', params)
      end
    end
  end
end
