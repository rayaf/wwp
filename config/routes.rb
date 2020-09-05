Rails.application.routes.draw do
  resources :relacionamentos, only: [:index, :show, :create, :destroy]
  resources :tags, only: [:index]
  get 'tags/:texto', to: 'tags#show'
  resources :tweets

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }


  root to: 'tweets#index'

end
