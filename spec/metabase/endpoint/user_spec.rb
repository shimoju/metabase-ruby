RSpec.describe Metabase::Endpoint::User do
  let(:client) do
    Metabase::Client.new(
      url: 'http://localhost:3030',
      username: 'mb@example.com',
      password: 'p@ssw0rd'
    )
  end

  before do
    client.login
  end

  describe 'current_user', vcr: true do
    context 'success' do
      it 'returns the current user' do
        user = client.current_user
        expect(user['email']).to eq('mb@example.com')
      end
    end
  end
end
