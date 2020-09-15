Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :events, only: [:index, :create] do
        resources :users, only: [:index, :create]
        resources :items, only: [:index, :create]
      end
      post '/login', to: 'sessions#create'
    end 
  end    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
