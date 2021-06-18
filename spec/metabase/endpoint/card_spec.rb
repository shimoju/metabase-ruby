# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Card do
  include_context 'login'
  let(:card_id) { 1 }

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
        card = client.card(card_id)
        expect(card).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_card_with_metadata', vcr: true do
    context 'success' do
      it 'returns query results of the card with metadata' do
        result = client.query_card_with_metadata(card_id)
        expect(result).to be_kind_of(Hash)
      end
    end
  end

  describe 'query_card', vcr: true do
    context 'success' do
      it 'returns query results of the card' do
        result = client.query_card(card_id)
        expect(result).to be_kind_of(Array)
      end
    end

    context 'specify format' do
      it 'returns query results of the card as specified format' do
        result = client.query_card(card_id, format: :csv)
        expect(result).to be_kind_of(String)
      end
    end
  end

  describe 'new_card', vcr: true do
    context 'success' do
      it 'create a new card' do
        card = client.card(card_id)
        new_card = client.new_card(**card)
        expect(new_card).to be_kind_of(Hash)
      end
    end
  end  
end
