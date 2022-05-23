Rails.application.routes.draw do
  get 'users/show'
  resources :rooms do
    resources :messages
  end

  get 'user/:id', to: 'users#show'

  root 'pages#home'
  devise_for :users

  devise_scope :devise do
    get 'users', to: 'devise/sessions#new'
   get 'pages/home'
   get 'users/usershow'
   get 'users/index'
  end
  get 'user/:id', to: 'user#show', as: 'user'
end
