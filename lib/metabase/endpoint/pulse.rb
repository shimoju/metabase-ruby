# frozen_string_literal: true

module Metabase
  module Endpoint
    module Pulse
      def pulses(**params)
        get('/api/pulse', params)
      end
    end
  end
end
