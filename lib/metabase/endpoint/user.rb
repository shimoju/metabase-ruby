# frozen_string_literal: true

module Metabase
  module Endpoint
    module User
      def current_user(params = {})
        get('/api/user/current', params)
      end
    end
  end
end
