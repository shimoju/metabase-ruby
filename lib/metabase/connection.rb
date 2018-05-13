require 'faraday'
require 'faraday_middleware'
require 'metabase/error'

module Metabase
  module Connection
    def connection
      @connection ||= Faraday.new(url: @url) do |c|
        c.request :json
        c.response :json, content_type: /\bjson$/
        c.adapter Faraday.default_adapter
        c.headers['User-Agent'] =
          "MetabaseRuby/#{VERSION} (#{RUBY_ENGINE}#{RUBY_VERSION})"
      end
    end
  end
end
