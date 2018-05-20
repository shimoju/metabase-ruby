# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dashboard do
  include_context 'login'

  describe 'dashboards', vcr: true do
    context 'success' do
      it 'returns all dashboards' do
        dashboards = client.dashboards
        expect(dashboards).to be_kind_of(Array)
      end
    end
  end
end
