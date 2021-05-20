Rails.application.routes.draw do
  # get 'users/create'
  resources :robots
  resources :hybrids
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
