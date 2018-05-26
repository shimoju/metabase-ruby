# frozen_string_literal: true

module Metabase
  module Endpoint
    module Pulse
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipulse
      def pulses(**params)
        get('/api/pulse', params)
      end
    end
  end
end
