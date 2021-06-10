module Api
  module V1
    class CarsController < ApplicationController
      def index
        cars = Car.all.includes(:family, :paints)
        render json: cars.to_json({
          except: [:created_at, :updated_at],
          include: {
            family: {
              only: [:id],
            },
            paints: {
              except: [:created_at, :updated_at],
            },
            propulsor: {
              except: [:created_at, :updated_at],
            },
            drive: {
              except: [:created_at, :updated_at],
            },
          },
        })
      end
    end
  end
end