# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dashboard do
  include_context 'login'

  describe 'dashboards', vcr: true do
    context 'success' do
      it 'returns all dashboards' do
        dashboards = client.dashboards
        expect(dashboards.size).to eq(3)
      end
    end
  end
end
