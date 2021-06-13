module Api
  module V1
    class DealershipsController < ApplicationController
      include ActionController::HttpAuthentication::Token
      before_action :authenticate_admin, only: [:create]

      def index
        dealerships = Dealership.all
        render json: dealerships.to_json({ except: %i[created_at updated_at] })
      end

      def create
        dealership = Dealership.create(dealerships_params)
        render json: dealership, status: :created
      end

      private

      def dealerships_params
        params.require(:dealership).permit(:name, :country, :city, :address)
      end

      def authenticate_admin
        token, _options = token_and_options(request)
        return render json: { error: 'No Authorization headers.' }, status: :unauthorized if token.nil?

        message = AuthenticationTokenService.decode(token)
        return render json: message, status: :unauthorized if message[:error]

        user_id = message[:user_id]
        @current_user = User.find(user_id)
        render json: { error: 'No admin role.' }, status: :unauthorized unless @current_user.admin?
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'No user found.' }, status: :unauthorized
      end
    end
  end
end
