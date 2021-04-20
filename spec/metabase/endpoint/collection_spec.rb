# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Collection do
  include_context 'login'
  let(:collection_id) { 1 }

  describe 'collections', vcr: true do
    context 'success' do
      it 'returns all collections' do
        collections = client.collections
        expect(collections).to be_kind_of(Array)
      end

      it 'returns a collection' do
        collection = client.collection(collection_id)
        expect(collection).to be_kind_of(Hash)
      end      
    end
  end
end
