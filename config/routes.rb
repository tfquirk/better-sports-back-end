Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
   namespace :v1 do
     resources :accounts, only: [:update]
     resources :teams, only: [:index, :show]
     resources :players, only: [:index, :show]
     resources :users, only: [:index, :show]
     resources :games, only: [:index, :show]
     resources :bets, only: [:create, :update, :destroy]

     get "auto_login", to: "auth#auto_login"
     post "/signup", to: "auth#signup_user"
     post "/login", to: "auth#login_user"

    end
  end

end
