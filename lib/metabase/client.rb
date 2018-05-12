require 'faraday'
require 'faraday_middleware'

module Metabase
  class Client
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
      @session_token = response.body['id']
    end
  end
end
