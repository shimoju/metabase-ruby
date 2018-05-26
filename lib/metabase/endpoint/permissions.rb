# frozen_string_literal: true

module Metabase
  module Endpoint
    module Permissions
      #
      # @param params [Hash] Query string
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipermissionsgroup
      def groups(**params)
        get('/api/permissions/group', params)
      end
    end
  end
end
