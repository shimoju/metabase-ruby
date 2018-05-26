# frozen_string_literal: true

module Metabase
  module Endpoint
    module Setup
      #
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apisetupadmin_checklist
      def admin_checklists(**params)
        get('/api/setup/admin_checklist', params)
      end
    end
  end
end
