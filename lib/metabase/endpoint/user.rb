# frozen_string_literal: true

module Metabase
  module Endpoint
    module User
      def current_user
        get('/api/user/current')
      end
    end
  end
end
