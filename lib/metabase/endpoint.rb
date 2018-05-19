# frozen_string_literal: true

require 'metabase/endpoint/activity'
require 'metabase/endpoint/card'
require 'metabase/endpoint/session'
require 'metabase/endpoint/user'

module Metabase
  module Endpoint
    include Activity
    include Card
    include Session
    include User
  end
end
