# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Public do
  include_context 'client'

  describe 'public_card', vcr: true do
    context 'success' do
      it 'returns the public card' do
        public_card = client.public_card('6e0b99ba-5455-4bd3-b356-31d0e0c4cb74')
        expect(public_card).to be_kind_of(Hash)
      end
    end
  end
end
