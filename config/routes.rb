Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users ,except: [:new, :edit] do
    resources :artworks, only: [:index]

  end
  resources :artworks, except: [:new, :edit]
  resources :artworkshares, only: [:create, :destroy]
  resources :comments

  # get 'users/', to: 'users#index', as: 'index'
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users/:id', to: 'users#edit', as: 'edit'
  # get 'users/new', to: 'users#new', as: 'new'
  #
  # post 'users/create', to: 'users#create', as: 'create'
  #
  # patch 'users/:id', to: 'users#update', as: 'update'
  # put 'users/:id', to: 'users#update', as: 'put_update'
  #
  # delete 'users/:id', to: 'users#destroy', as: 'destroy'

  # put 'users/:id', to: 'users#edit', as: 'edit'


end
