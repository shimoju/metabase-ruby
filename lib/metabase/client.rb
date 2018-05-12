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
      headers = {
        user_agent: "MetabaseRuby/#{VERSION} (#{RUBY_ENGINE}#{RUBY_VERSION})"
      }
      @connection = Faraday.new(url: url, headers: headers) do |c|
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
      @token = response.body['id']
    end
  end
end
