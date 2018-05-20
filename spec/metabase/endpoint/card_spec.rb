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
end
