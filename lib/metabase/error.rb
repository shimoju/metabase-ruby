# frozen_string_literal: true

module Metabase
  class Error < StandardError
    def self.from_response(response)
      klass =
        case response.status
        when 400 then BadRequest
        end
      klass&.new(response)
    end

    def initialize(response = nil)
      @response = response
      super(build_error_message)
    end

    def build_error_message
      return nil if @response.nil?
      @response.body
    end
  end

  class BadRequest < Error; end
end
