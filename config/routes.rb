Rails.application.routes.draw do
  root 'pages#home'
  # get 'home', to: 'pages#home', as: :home
  get 'sobre', to: 'pages#sobre', as: :sobre
  get 'produtos', to: 'pages#produtos', as: :produtos
  get 'contato', to: 'pages#contato', as: :contato
  # resources :pages, only: %i[new create]
  # resources :pages, only: :create
  resources :pages, only: %i[contato create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
