Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :authentication, only: [:create], path: 'login'
      resources :users, only: [:create], path: 'register'
      resources :users, only: [:index], path: 'users'
      resource :appointments, only: [:create, :destroy, :show]
      resources :appointments, only: [:index], path: 'admin/appointments'
      resources :dealerships, only: [:index]
      resources :car_families, only: [:index], path: 'models'
      resources :cars, only: [:index]
    end
  end
end
