module Api
  module V1
    class CarsController < ApplicationController
      def index
        cars = Car.all_with_associations
        render json: cars.to_json({
                                    except: %i[created_at updated_at],
                                    include: {
                                      family: {
                                        only: [:id]
                                      },
                                      paints: {
                                        except: %i[created_at updated_at]
                                      },
                                      propulsor: {
                                        except: %i[created_at updated_at]
                                      },
                                      drive: {
                                        except: %i[created_at updated_at]
                                      }
                                    }
                                  })
      end
    end
  end
end
