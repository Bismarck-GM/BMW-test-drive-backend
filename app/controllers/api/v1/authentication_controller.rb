module Api
  module V1
    class AuthenticationController < ApplicationController
      def create
        if !user
          handle_unauthenticated
        else
          token = AuthenticationTokenService.encode(user)
          render json: {
            loggedIn: true,
            username: user.username,
            email: user.email,
            admin: user.admin,
            token: token
          }
        end
      end

      private

      def user
        @user ||= User.find_by(username: auth_params[:username]) || User.find_by(email: auth_params[:email])
      end

      def handle_unauthenticated
        render json: { error: 'Incorrect password, username or e-mail.' }, status: :unauthorized
      end

      def auth_params
        params.require(:authentication).permit(:username, :password, :email, :admin)
      end
    end
  end
end
