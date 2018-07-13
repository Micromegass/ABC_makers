Rails.application.routes.draw do
  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'

  # delete 'logout', to: 'sessions#destroy'
  resources :sessions
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    resource :vote, only: [:create, :destroy]
    resources :comments, only: [:create]
  end

   delete 'logout', to: 'sessions#destroy'

  root 'products#index'
end
