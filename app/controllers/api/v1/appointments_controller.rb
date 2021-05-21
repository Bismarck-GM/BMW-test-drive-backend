module Api
  module V1
    class AppointmentsController < ApplicationController
      include ActionController::HttpAuthentication::Token
      before_action :authenticate_admin, only: [:index]
      before_action :authenticate_user, only: [:create, :show]

      def create
        params = digest_params(appointment_params, @current_user.id)
        appointment = Appointment.create(params)
        if appointment.save
          render json: appointment, status: :created
        else
          render json: { error: appointment.errors[:start_time].first }, status: :unprocessable_entity
        end
      end

      def show
        appointments = Appointment.where(user_id: @current_user.id).includes(:dealership)
        render json: appointments.to_json({
          except: [:created_at, :updated_at, :user_id, :dealership_id],
          include: { 
            dealership: {
              except: [:id, :created_at, :updated_at]
            }
          }
        })
      end

      def index
        appointments = Appointment.all
        render json: appointments
      end

      private
# using new Date().toISOString()
      def digest_params(ap_params, user_id)
        params = {
          start_time: ap_params[:start_time].to_datetime,
          end_time: ap_params[:start_time].to_datetime + 30.minutes,
          user_id: user_id,
          dealership_id: ap_params[:dealership]
        }
      end

      def appointment_params
        params.permit(:start_time, :dealership)
      end

      def authenticate_user
        token, _options = token_and_options(request)
        return render json: { error: "You must log in first."}, status: :unauthorized if token.nil?
        message = AuthenticationTokenService.decode(token)
        return render json: message, status: :unauthorized if message[:error]
        user_id = message[:user_id]
        @current_user = User.find(user_id)
      rescue ActiveRecord::RecordNotFound
        render json: { error: "No user found."}, status: :unauthorized
      end

      def authenticate_admin
        token, _options = token_and_options(request)
        return render json: { error: "No Authorization headers."}, status: :unauthorized if token.nil?
        message = AuthenticationTokenService.decode(token)
        return render json: message, status: :unauthorized if message[:error]
        user_id = message[:user_id]
        @current_user = User.find(user_id)
        render json: { error: "No admin role." }, status: :unauthorized unless @current_user.admin?
      rescue ActiveRecord::RecordNotFound
        render json: { error: "No user found."}, status: :unauthorized
      end
    end
  end
end