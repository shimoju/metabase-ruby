# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Metric do
  include_context 'login'

  describe 'metrics', vcr: true do
    context 'success' do
      it 'returns all metrics' do
        metrics = client.metrics
        expect(metrics).to be_kind_of(Array)
      end
    end
  end
end
