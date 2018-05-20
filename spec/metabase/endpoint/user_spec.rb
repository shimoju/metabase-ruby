# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::User do
  include_context 'login'

  describe 'current_user', vcr: true do
    context 'success' do
      it 'returns the current user' do
        user = client.current_user
        expect(user).to be_kind_of(Hash)
      end
    end
  end
end
