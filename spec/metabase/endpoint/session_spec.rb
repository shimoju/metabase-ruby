# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Session do
  include_context 'client'

  describe 'login', vcr: true do
    let(:incorrect_password) do
      Metabase::Client.new(
        url: 'http://localhost:3030',
        username: 'mb@example.com',
        password: 'incorrect'
      )
    end

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

    context 'specify username and password' do
      it 'uses the username and password' do
        params = { username: 'mb@example.com', password: 'p@ssw0rd' }
        expect(incorrect_password.login(**params)).to match(/[a-z0-9-]{36}/)
      end
    end
  end

  describe 'logout', vcr: true do
    context 'success' do
      include_context 'login'

      xit 'returns true' do
        # TODO: Adjust stub to pass
        stub_request(:delete, 'http://localhost:3030/api/session')
          .with(
            body: {
              'metabase-session-id' => 'fake_token'
            }
          )
          .to_return(status: 200)

        expect(client.logout).to be(true)
      end
    end

    context 'not logged in' do
      it 'raises error' do
        expect { client.logout }.to raise_error(Metabase::NotFound)
      end
    end
  end
end
