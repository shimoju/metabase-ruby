RSpec.describe Metabase::Client do
  let(:client) do
    Metabase::Client.new(username: 'mb@example.com', password: 'p@ssw0rd')
  end

  it 'has a client' do
    expect(client).not_to be nil
  end
end
