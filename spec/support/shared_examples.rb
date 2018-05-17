# frozen_string_literal: true

RSpec.shared_examples 'response handling' do
  let(:host) { 'localhost:3030' }
  let(:path) { '/' }

  context 'success' do
    before do
      stub_request(method, host)
        .to_return(status: 200, body: 'OK')
    end

    it 'returns the response body' do
      expect(client.send(method, path)).to eq('OK')
    end
  end

  context 'server returns 400' do
    before do
      stub_request(method, host)
        .to_return(status: 400, body: 'Bad Request')
    end

    it 'raises BadRequest' do
      expect { client.send(method, path) }.to raise_error(Metabase::BadRequest)
    end
  end

  context 'server returns 401' do
    before do
      stub_request(method, host)
        .to_return(status: 401, body: 'Unauthorized')
    end

    it 'raises Unauthorized' do
      expect { client.send(method, path) }.to raise_error(Metabase::Unauthorized)
    end
  end

  context 'server returns 403' do
    before do
      stub_request(method, host)
        .to_return(status: 403, body: 'Forbidden')
    end

    it 'raises Forbidden' do
      expect { client.send(method, path) }.to raise_error(Metabase::Forbidden)
    end
  end

  context 'server returns 404' do
    before do
      stub_request(method, host)
        .to_return(status: 404, body: 'Not Found')
    end

    it 'raises NotFound' do
      expect { client.send(method, path) }.to raise_error(Metabase::NotFound)
    end
  end

  context 'server returns other 4xx' do
    before do
      stub_request(method, host)
        .to_return(status: 499, body: 'Client Error')
    end

    it 'raises ClientError' do
      expect { client.send(method, path) }.to raise_error(Metabase::ClientError)
    end
  end

  context 'server returns 500' do
    before do
      stub_request(method, host)
        .to_return(status: 500, body: 'Internal Server Error')
    end

    it 'raises InternalServerError' do
      expect { client.send(method, path) }.to raise_error(Metabase::InternalServerError)
    end
  end

  context 'server returns 502' do
    before do
      stub_request(method, host)
        .to_return(status: 502, body: 'Bad Gateway')
    end

    it 'raises BadGateway' do
      expect { client.send(method, path) }.to raise_error(Metabase::BadGateway)
    end
  end

  context 'server returns 503' do
    before do
      stub_request(method, host)
        .to_return(status: 503, body: 'Service Unavailable')
    end

    it 'raises ServiceUnavailable' do
      expect { client.send(method, path) }.to raise_error(Metabase::ServiceUnavailable)
    end
  end

  context 'server returns other 5xx' do
    before do
      stub_request(method, host)
        .to_return(status: 599, body: 'Server Error')
    end

    it 'raises ServerError' do
      expect { client.send(method, path) }.to raise_error(Metabase::ServerError)
    end
  end
end
