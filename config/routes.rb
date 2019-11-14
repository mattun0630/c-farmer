Rails.application.routes.draw do
  get 'follows/create'
  get 'follows/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :producers, controllers: {
    sessions:      'producers/sessions',
    registrations: 'producers/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users
  namespace :producers do
   resources :products
   resources :maps
  end
  resources :producers do
    resource :follows, only: [:create, :destroy]
  end

  resources :products

  resources :posts do
    resource :favorites, only: [:create, :destroy]
    resource :replys, only: [:create, :destroy]
  end


  namespace :users do
    resources :posts
  end

  root 'products#index'
  get 'tags/:tag', to: 'producers/products#index', as: :tag
  get 'producers/products/search', to: 'producers/products#search'
  post 'producers/products/search', to: 'producers/products#search'

end
