Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :user_pallets
      resources :pallets
      resources :users
    end
  end
end
