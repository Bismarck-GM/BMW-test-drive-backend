module Api
  module V1
    class CarFamiliesController < ApplicationController
      def index
        car_families = CarFamily.all
        render json: car_families.to_json({ except: %i[created_at updated_at] })
      end
    end
  end
end
