# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Public do
  include_context 'client'
  let(:card_uuid) { '6e0b99ba-5455-4bd3-b356-31d0e0c4cb74' }

  describe 'public_card', vcr: true do
    context 'success' do
      it 'returns the public card' do
        public_card = client.public_card(card_uuid)
        expect(public_card).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_public_card_with_metadata', vcr: true do
    context 'success' do
      it 'returns query results of the public card with metadata' do
        result = client.query_public_card_with_metadata(card_uuid)
        expect(result).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_public_card', vcr: true do
    context 'success' do
      it 'returns query results of the public card' do
        result = client.query_public_card(card_uuid)
        expect(result).to be_kind_of(Array)
      end
    end
  end
end
