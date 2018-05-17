# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Session do
  include_context 'client'

  let(:incorrect_password) do
    Metabase::Client.new(
      url: 'http://localhost:3030',
      username: 'mb@example.com',
      password: 'incorrect'
    )
  end

  describe 'login', vcr: true do
    context 'success' do
      it 'returns a session token' do
        expect(client.login).to match(/[a-z0-9-]{36}/)
      end
    end

    context 'incorrect username or password' do
      it 'raises error' do
        expect { incorrect_password.login }.to raise_error(Metabase::BadRequest)
      end
    end
  end
end
