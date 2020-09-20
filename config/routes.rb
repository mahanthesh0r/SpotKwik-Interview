Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :users, param: :id
      resources :h1
      resources :h2
      resources :h3
      resources :friendships
    end
  end
  get '*path', to: 'pages#index', via: :all
end
