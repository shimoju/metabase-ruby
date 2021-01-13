# frozen_string_literal: true

module Metabase
  class Error < StandardError
    def self.from_response(response)
      klass =
        case response.status
        when 400 then BadRequest
        when 401 then Unauthorized
        when 403 then Forbidden
        when 404 then NotFound
        when 400..499 then ClientError
        when 500 then InternalServerError
        when 502 then BadGateway
        when 503 then ServiceUnavailable
        when 500..599 then ServerError
        end
      klass&.new(response)
    end

    def initialize(response = nil)
      @response = response
      super(build_error_message)
    end

    private

    def build_error_message
      return nil if @response.nil?

      "#{@response.env.method.upcase} #{@response.env.url}: " \
      "#{@response.status} - #{@response.body}"
    end
  end

  class ClientError < Error; end

  class BadRequest < Error; end

  class Unauthorized < Error; end

  class Forbidden < Error; end

  class NotFound < Error; end

  class ServerError < Error; end

  class InternalServerError < Error; end

  class BadGateway < Error; end

  class ServiceUnavailable < Error; end
end
