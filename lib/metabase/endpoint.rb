# frozen_string_literal: true

require 'metabase/endpoint/activity'
require 'metabase/endpoint/alert'
require 'metabase/endpoint/card'
require 'metabase/endpoint/collection'
require 'metabase/endpoint/dashboard'
require 'metabase/endpoint/database'
require 'metabase/endpoint/metric'
require 'metabase/endpoint/session'
require 'metabase/endpoint/user'

module Metabase
  module Endpoint
    include Activity
    include Alert
    include Card
    include Collection
    include Dashboard
    include Database
    include Metric
    include Session
    include User
  end
end
