Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update]
      resources :news, only: [:index, :create, :update]
      resources :user_news, only: [:index, :create, :delete, :show]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      delete '/deletenews', to: 'users#deletenews'
    end
  end
end
