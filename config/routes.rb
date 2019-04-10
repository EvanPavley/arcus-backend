Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :user_pallets
      resources :pallets
      resources :users

      post "/login", to: "auth#create"
      get "/auto_login", to: "auth#auto_login"
    end
  end
end
