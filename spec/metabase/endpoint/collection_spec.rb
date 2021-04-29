# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Collection do
  include_context 'login'

  describe 'collections', vcr: true do
    context 'success' do
      it 'returns all collections' do
        collections = client.collections
        expect(collections).to be_kind_of(Array)
      end
    end
  end

  describe 'collection', vcr: true do
    context 'success' do
      it 'returns collection' do
        collection = client.collection(1)
        expect(collection).to be_kind_of(Array)
      end
    end
  end

  describe 'collection_items', vcr: true do
    context 'success' do
      it 'returns collection items' do
        collection_items = client.collection_items(1)
        expect(collection_items).to be_kind_of(Array)
      end
    end
  end
end
