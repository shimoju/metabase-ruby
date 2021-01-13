# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dataset
      # Execute a query and retrieve the results in the usual format.
      #
      # @param query [Hash] Query. {query: 'JSON String'}
      # @param format [Symbol, String] Export format (api, csv, json, xlsx)
      # @return [Array<Hash>] Query results
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apidatasetexport-format
      def query_dataset(format: :json, **params)
        params.merge!({ headers: { 'Content-Type': 'application/x-www-form-urlencoded' } })
        post("/api/dataset/#{format}", **params)
      end
    end
  end
end
