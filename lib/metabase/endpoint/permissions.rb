# frozen_string_literal: true

module Metabase
  module Endpoint
    module Permissions
      # Fetch all permissions groups.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipermissionsgroup
      def groups(**params)
        get('/api/permissions/group', params)
      end
    end
  end
end
