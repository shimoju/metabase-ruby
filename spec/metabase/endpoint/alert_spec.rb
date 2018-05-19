# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Alert do
  include_context 'login'

  describe 'alerts', vcr: true do
    context 'success' do
      it 'returns all alerts' do
        alerts = client.alerts
        expect(alerts.size).to eq(1)
      end
    end
  end
end
