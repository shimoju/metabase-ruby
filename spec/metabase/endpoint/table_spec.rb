# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Table do
  include_context 'login'

  describe 'tables', vcr: true do
    context 'success' do
      it 'returns all tables' do
        tables = client.tables
        expect(tables).to be_kind_of(Array)
      end
    end
  end
end
