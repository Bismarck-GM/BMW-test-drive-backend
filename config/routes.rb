Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
      post 'dealerships', to: 'dealerships#create'
      post 'appointments', to: 'appointments#create'
      get 'users', to: 'users#index'
      get 'dealerships', to: 'dealerships#index'
      get 'appointments', to: 'appointments#show'
      get 'admin/appointments', to: 'appointments#index'
      get 'models', to: 'car_families#index'
      get 'cars', to: 'cars#index'
    end
  end
end
