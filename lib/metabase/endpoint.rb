require 'metabase/endpoint/session'
require 'metabase/endpoint/user'

module Metabase
  module Endpoint
    include Session
    include User
  end
end
