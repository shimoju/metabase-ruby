# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Dataset do
  include_context 'login'

  let(:query) { '{"type":"native","native":{"query":"SELECT * FROM orders LIMIT 1;"},"database":1}' }

  describe 'query_dataset', vcr: true do
    context 'success' do
      it 'returns query results of the dataset' do
        result = client.query_dataset(query: query)
        expect(result).to be_kind_of(Array)
      end
    end

    context 'specify format' do
      it 'returns query results of the dataset as specified format' do
        result = client.query_dataset(query: query, format: 'csv')
        expect(result).to be_kind_of(String)
      end
    end
  end
end
