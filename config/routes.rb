Rails.application.routes.draw do
  root 'users#new'
  post 'users/new', to: 'users#create'
  resources :users, only: %i[new create edit update]
end
