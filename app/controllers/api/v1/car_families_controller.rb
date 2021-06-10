module Api
  module V1
    class CarFamiliesController < ApplicationController
      def index
        carFamilies = CarFamily.all
        render json: carFamilies.to_json({except: [:created_at, :updated_at]})
      end
    end
  end
end