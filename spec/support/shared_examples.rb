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
      message = %r{^#{method.upcase} http://#{host}#{path}: 400 - Bad Request$}
      expect { client.send(method, path) }.to raise_error(Metabase::BadRequest, message)
    end
  end

  context 'server returns 401' do
    before do
      stub_request(method, host)
        .to_return(status: 401, body: 'Unauthorized')
    end

    it 'raises Unauthorized' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 401 - Unauthorized$}
      expect { client.send(method, path) }.to raise_error(Metabase::Unauthorized, message)
    end
  end

  context 'server returns 403' do
    before do
      stub_request(method, host)
        .to_return(status: 403, body: 'Forbidden')
    end

    it 'raises Forbidden' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 403 - Forbidden$}
      expect { client.send(method, path) }.to raise_error(Metabase::Forbidden, message)
    end
  end

  context 'server returns 404' do
    before do
      stub_request(method, host)
        .to_return(status: 404, body: 'Not Found')
    end

    it 'raises NotFound' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 404 - Not Found$}
      expect { client.send(method, path) }.to raise_error(Metabase::NotFound, message)
    end
  end

  context 'server returns other 4xx' do
    before do
      stub_request(method, host)
        .to_return(status: 499, body: 'Client Error')
    end

    it 'raises ClientError' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 499 - Client Error$}
      expect { client.send(method, path) }.to raise_error(Metabase::ClientError, message)
    end
  end

  context 'server returns 500' do
    before do
      stub_request(method, host)
        .to_return(status: 500, body: 'Internal Server Error')
    end

    it 'raises InternalServerError' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 500 - Internal Server Error$}
      expect { client.send(method, path) }.to raise_error(Metabase::InternalServerError, message)
    end
  end

  context 'server returns 502' do
    before do
      stub_request(method, host)
        .to_return(status: 502, body: 'Bad Gateway')
    end

    it 'raises BadGateway' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 502 - Bad Gateway$}
      expect { client.send(method, path) }.to raise_error(Metabase::BadGateway, message)
    end
  end

  context 'server returns 503' do
    before do
      stub_request(method, host)
        .to_return(status: 503, body: 'Service Unavailable')
    end

    it 'raises ServiceUnavailable' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 503 - Service Unavailable$}
      expect { client.send(method, path) }.to raise_error(Metabase::ServiceUnavailable, message)
    end
  end

  context 'server returns other 5xx' do
    before do
      stub_request(method, host)
        .to_return(status: 599, body: 'Server Error')
    end

    it 'raises ServerError' do
      message = %r{^#{method.upcase} http://#{host}#{path}: 599 - Server Error$}
      expect { client.send(method, path) }.to raise_error(Metabase::ServerError, message)
    end
  end
end
