# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Card do
  include_context 'login'

  describe 'cards', vcr: true do
    context 'success' do
      it 'returns all cards' do
        cards = client.cards
        expect(cards).to be_kind_of(Array)
      end
    end
  end

  describe 'card', vcr: true do
    context 'success' do
      it 'returns the card' do
        card = client.card(1)
        expect(card).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_card_with_metadata', vcr: true do
    context 'success' do
      it 'returns query results of the card with metadata' do
        result = client.query_card_with_metadata(1)
        expect(result).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_card', vcr: true do
    context 'success' do
      it 'returns query results of the card' do
        result = client.query_card(1)
        expect(result).to be_kind_of(Array)
      end
    end
  end
end
