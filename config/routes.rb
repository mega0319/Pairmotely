Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  resources :users
  resources :poker_tables
  post '/auth', to: 'auth#create'
end
