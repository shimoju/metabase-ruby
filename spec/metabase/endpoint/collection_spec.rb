# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Collection do
  include_context 'login'

  describe 'collections', vcr: true do
    context 'success' do
      it 'returns all collections' do
        collections = client.collections
        expect(collections.size).to eq(2)
      end
    end
  end
end
