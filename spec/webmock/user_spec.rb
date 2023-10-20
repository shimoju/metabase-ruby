require 'spec_helper'

RSpec.describe Metabase::Endpoint::User do
  include_context 'login'

  let(:host) { 'localhost:3030' }

  context 'success' do
    it 'Fetches Current User' do
      body = {
        'email' => 'mb@example.com',
        'first_name'=> 'Admin',
        'id'=> 1,
        'last_name'=> 'User'
      }

      stub_request(:get, "#{host}/api/user/current")
        .to_return(status: 200, body: body.to_json)

      begin
        user_json = client.current_user
        user = JSON.parse(user_json)

        expect(user['email']).to eq('mb@example.com')
      rescue StandardError
        expect(WebMock).to have_requested(:put, "#{host}/api/user/current")
      end
    end

    it 'Reactivates User' do
      body = {
        'is_active' => true,
        'id' => 3
      }

      stub_request(:put, "#{host}/api/user/3/reactivate")
        .to_return(status: 200, body: body.to_json)

      begin
        user_json = client.reactivate(id: 3)
        user = JSON.parse(user_json)

        expect(user['is_active']).to eq(true)
      rescue StandardError
        expect(WebMock).to have_requested(:put, "#{host}/api/user/3/reactivate")
      end
    end
  end

  context 'user already exists to reactivate' do
    before do
      stub_request(:put, "#{host}/api/user/3/reactivate")
        .to_return(status: 400, body: 'BadRequest')
    end

    it 'should return error' do
      message = %r{^PUT http://#{host}/api/user/3/reactivate: 400 - BadRequest}
      expect { client.reactivate(id: 3) }
        .to raise_error(Metabase::BadRequest, message)
    end
  end
end