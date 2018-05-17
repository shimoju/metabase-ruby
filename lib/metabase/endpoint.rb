# frozen_string_literal: true

require 'metabase/endpoint/card'
require 'metabase/endpoint/session'
require 'metabase/endpoint/user'

module Metabase
  module Endpoint
    include Card
    include Session
    include User
  end
end
