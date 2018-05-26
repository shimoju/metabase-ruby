# frozen_string_literal: true

require 'metabase/connection'
require 'metabase/endpoint'

module Metabase
  class Client
    include Connection
    include Endpoint

    def initialize(url:, username: nil, password: nil, token: nil)
      @url = url
      @username = username
      @password = password
      @token = token
    end
  end
end
