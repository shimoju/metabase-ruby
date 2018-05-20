# frozen_string_literal: true

module Metabase
  module Endpoint
    module Setup
      def admin_checklists(params = {})
        get('/api/setup/admin_checklist', params)
      end
    end
  end
end
