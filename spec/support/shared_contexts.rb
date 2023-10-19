# frozen_string_literal: true

RSpec.shared_context 'client' do
  let(:client) do
    Metabase::Client.new(
      url: 'http://localhost:3030',
      username: 'mb@example.com',
      password: 'p@ssw0rd'
    )
  end
end

RSpec.shared_context 'login' do
  include_context 'client'
  before {
    stub_request(:post, 'http://localhost:3030/api/session')
      .with(
        body: {
          'username' => 'mb@example.com',
          'password' => 'p@ssw0rd'
        }
      )
      .to_return(status: 200, body: { id: 'bca8d83e-7d37-4670-81b6-560ac452773e' }.to_json, headers: { 'Content-Type' => 'application/json' })

    client.login 
  }
end
