module Api
  module V1
    class AuthenticationController < ApplicationController

      def create
        if !user
          handle_unauthenticated
        else
          if user.authenticate(auth_params[:password]) && user.admin?
            token = AuthenticationTokenService.encode(user)
            render json: {
              logged_in: true,
              username: user.username,
              email: user.email,
              admin: user.admin,
              token: token,
            }
          elsif user.authenticate(auth_params[:password])
            token = AuthenticationTokenService.encode(user)
            render json: {
              logged_in: true,
              username: user.username,
              email: user.email,
              token: token,
            }
          else
            handle_unauthenticated
          end
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
