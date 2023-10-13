# frozen_string_literal: true

module Metabase
  module Endpoint
    module User


      # Fetch all users.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiuser
      def users(**params)
        get('/api/user', **params)
      end

      # Fetch a User.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api/user.md#get-apiuserid
      def user(**params)
        get("/api/user/#{params[:id]}", **params)
      end

      # Fetch the current user.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apiusercurrent
      def current_user(**params)
        get('/api/user/current', **params)
      end

      def create_user(**params)
        post('/api/user', **params)
      end

      # Resend the user invite email for a given user.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api/user.md#post-apiuseridsend_invite
      def invite_user(**params)
        post("/api/user/#{params[:id]}/send_invite", **params)
      end

      # Update an existing, active User.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api/user.md#put-apiuserid
      def update_user(**params)
        put("/api/user/#{params[:id]}", **params)
      end

      # Reactivates a user that was deleted
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://www.metabase.com/docs/latest/api/user#put-apiuseridreactivate
      def reactivate(**params)
        put("/api/user/#{params[:id]}/reactivate", **params)
      end

      # Disable a User account; This does not remove the User from the DB
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://www.metabase.com/docs/latest/api/user#delete-apiuserid
      def delete_user(**params)
        delete("/api/user/#{params[:id]}", **params)
      end
    end
  end
end
