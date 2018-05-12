require 'faraday'
require 'faraday_middleware'

module Metabase
  class Client
    def initialize(url:, username:, password:)
      @username = username
      @password = password
      @connection = Faraday.new(url: url) do |c|
        c.request :json
        c.adapter Faraday.default_adapter
      end
    end

    def login
      params = {username: @username, password: @password}
      @connection.post '/api/session', params
    end
  end
end
