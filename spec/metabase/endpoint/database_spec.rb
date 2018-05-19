# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Database do
  include_context 'login'

  describe 'databases', vcr: true do
    context 'success' do
      it 'returns all databases' do
        databases = client.databases
        expect(databases.size).to eq(2)
      end
    end
  end
end
