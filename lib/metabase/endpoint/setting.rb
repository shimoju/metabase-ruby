# frozen_string_literal: true

module Metabase
  module Endpoint
    module Setting
      # Fetch all settings.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apisetting
      def settings(**params)
        get('/api/setting', **params)
      end
    end
  end
end
