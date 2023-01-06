Rails.application.routes.draw do
  resources :sessions
  resources :chatroom
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
