Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :apartments, only: [:index, :update, :show]
        resources :bills, only: [:update, :show]
      end
    end
end
