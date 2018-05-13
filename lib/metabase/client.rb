# frozen_string_literal: true

require 'metabase/connection'
require 'metabase/endpoint'

module Metabase
  class Client
    include Connection
    include Endpoint

    def initialize(url:, username:, password:)
      @url = url
      @username = username
      @password = password
    end
  end
end
