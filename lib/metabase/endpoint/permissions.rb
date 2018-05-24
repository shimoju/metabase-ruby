# frozen_string_literal: true

module Metabase
  module Endpoint
    module Permissions
      def groups(**params)
        get('/api/permissions/group', params)
      end
    end
  end
end
