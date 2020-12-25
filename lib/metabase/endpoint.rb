# frozen_string_literal: true

require 'metabase/endpoint/activity'
require 'metabase/endpoint/alert'
require 'metabase/endpoint/async'
require 'metabase/endpoint/card'
require 'metabase/endpoint/collection'
require 'metabase/endpoint/dashboard'
require 'metabase/endpoint/database'
require 'metabase/endpoint/dataset'
require 'metabase/endpoint/metric'
require 'metabase/endpoint/permissions'
require 'metabase/endpoint/public'
require 'metabase/endpoint/pulse'
require 'metabase/endpoint/revision'
require 'metabase/endpoint/segment'
require 'metabase/endpoint/session'
require 'metabase/endpoint/setting'
require 'metabase/endpoint/setup'
require 'metabase/endpoint/table'
require 'metabase/endpoint/user'
require 'metabase/endpoint/util'
require 'metabase/endpoint/x_ray'

module Metabase
  module Endpoint
    include Activity
    include Alert
    include Async
    include Card
    include Collection
    include Dashboard
    include Database
    include Dataset
    include Metric
    include Permissions
    include Public
    include Pulse
    include Revision
    include Segment
    include Session
    include Setting
    include Setup
    include Table
    include User
    include Util
    include XRay
  end
end
