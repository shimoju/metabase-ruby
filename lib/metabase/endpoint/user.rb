# frozen_string_literal: true

module Metabase
  module Endpoint
    module User
      def users(params = {})
        get('/api/user', params)
      end

      def current_user(params = {})
        get('/api/user/current', params)
      end
    end
  end
end
