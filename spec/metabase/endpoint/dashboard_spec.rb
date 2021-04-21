# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dashboard do
  include_context 'login'
  let(:dashboard_id) { 1 }

  describe 'dashboards', vcr: true do
    context 'success' do
      it 'returns all dashboards' do
        dashboards = client.dashboards
        expect(dashboards).to be_kind_of(Array)
      end
    end
  end

  describe 'dashboard', vcr: true do
    context 'success' do
      it 'returns the dashboard' do
        dashboard = client.dashboard(dashboard_id)
        expect(dashboard).to be_kind_of(Hash)
      end
    end
  end

  describe 'new_dashboard', vcr: true do
    context 'success' do
      it 'create a new dashboard' do
        dashboard = client.dashboard(dashboard_id)
        new_dashboard = client.new_dashboard(**dashboard)
        expect(dashboard).to be_kind_of(Hash)
      end
    end
  end
end
