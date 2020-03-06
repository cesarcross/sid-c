Rails.application.routes.draw do
  # get 'home', to: 'pages#home', as: :home 
  get 'sobre', to: 'pages#sobre', as: :sobre
  get 'produtos', to: 'pages#produtos', as: :produtos
  get 'contato', to: 'pages#contato', as: :contato
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
