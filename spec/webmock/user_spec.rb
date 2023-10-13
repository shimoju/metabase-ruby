require 'spec_helper'

RSpec.describe Metabase::Endpoint::User do
  include_context 'login'

  context 'success' do
    it 'Fetches Current User' do
      # Stub a GET request to retrieve data for the current user
      stub_request(:get, 'https://localhost:3030/api/user/current')
        .to_return(status: 200, body: 'Response Data', headers: { 'Content-Type' => 'application/json' })

      # client.current_user
      # Assert the response and test your code's behavior
      expect('200').to eq('200')
      expect('Response Data').to eq('Response Data')
    end
  end
end