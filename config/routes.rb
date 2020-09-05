Rails.application.routes.draw do
  resources :tags, only: [:index]
  get 'tags/:texto', to: 'tags#show'
  resources :tweets

  devise_for :users

  root to: 'tweets#index'

end
