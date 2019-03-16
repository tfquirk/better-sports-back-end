Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
   namespace :v1 do
     resources :teams, only: [:index, :show]
     resources :players, only: [:index, :show]
     resources :users, only: [:index, :show]
     resources :games, only: [:index, :show]
     resources :bets, only: [:index, :show, :create, :update, :destroy]

     post "/signup", to: "auth#create_user"
    end
  end

end
