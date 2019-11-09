Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   devise_for :users
  # devise_for :producers, controllers: { sessions: 'producers/sessions' }：
  resources :products, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :update]
  resources :addresses
  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resource :post_comments, only: [:create, :destroy, :show]
  end
  root 'posts#index'

end
