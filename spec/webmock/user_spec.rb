require 'spec_helper'

RSpec.describe Metabase::Endpoint::User do
  include_context 'login'

  context 'success' do
    it 'Fetches Current User' do
      body = {
        'email' => 'mb@example.com',
        'first_name'=> 'Admin',
        'id'=> 1,
        'last_name'=> 'User'
      }

      stub_request(:get, 'http://localhost:3030/api/user/current')
        .to_return(status: 200, body: body.to_json)

      begin
        user_json = client.current_user
        user = JSON.parse(user_json)
  
        expect(user['email']).to eq('mb@example.com')
      rescue StandardError
        expect(WebMock).to have_requested(:put, 'http://localhost:3030/api/user/current')
      end
    end

    it 'Reactivates User' do
      body = {
        'is_active' => true,
        'id' => 3
      }

      stub_request(:put, 'http://localhost:3030/api/user/3/reactivate')
        .to_return(status: 200, body: body.to_json)

      begin
        user_json = client.reactivate(id: 3)
        user = JSON.parse(user_json)

        expect(user['is_active']).to eq(true)
      rescue StandardError
        expect(WebMock).to have_requested(:put, 'http://localhost:3030/api/user/3/reactivate')
      end
    end
  end
end