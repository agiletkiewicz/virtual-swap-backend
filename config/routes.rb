Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :events, only: [:index, :create, :show]
      resources :items, only: [:create]
      resources :users, only: [:create]
      post '/login', to: 'sessions#create'
      resources :takes, only: [:create]
    end 
  end    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
