require 'faraday'

module Metabase
  class Client
    def initialize(url:, username:, password:)
      @username = username
      @password = password
      @connection = Faraday.new(url: url) do |c|
        c.adapter Faraday.default_adapter
      end
    end
  end
end
