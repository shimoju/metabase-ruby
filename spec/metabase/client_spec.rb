RSpec.describe Metabase::Client do
  let(:client) do
    Metabase::Client.new(
      url: 'http://localhost:3030',
      username: 'mb@example.com',
      password: 'p@ssw0rd'
    )
  end

  describe 'login' do
    context 'success' do
      it 'returns a session token' do
        expect(client.login).to eq '12345678'
      end
    end

    context 'incorrect username or password' do
      pending
    end
  end
end
