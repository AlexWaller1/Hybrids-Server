Rails.application.routes.draw do
  resources :mimimarts
  # get 'users/create'
  resources :robots
  resources :hybrids
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
