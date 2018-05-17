# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::User do
  include_context 'login'

  describe 'current_user', vcr: true do
    context 'success' do
      it 'returns the current user' do
        user = client.current_user
        expect(user['email']).to eq('mb@example.com')
      end
    end
  end
end
