require 'faraday'
require 'faraday_middleware'
require 'metabase/endpoint'
require 'metabase/error'

module Metabase
  class Client
    include Endpoint

    def initialize(url:, username:, password:)
      @username = username
      @password = password
      @connection = Faraday.new(url: url) do |c|
        c.request :json
        c.response :json, content_type: /\bjson$/
        c.adapter Faraday.default_adapter
      end
    end

    def login
      params = { username: @username, password: @password }
      response = @connection.post '/api/session', params
      error = Error.from_response(response)
      raise error if error
      @session_token = response.body['id']
    end
  end
end
