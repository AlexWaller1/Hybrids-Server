Rails.application.routes.draw do
  resources :skateparks
  resources :minimarts
  resources :mimimarts
  # get 'users/create'
  resources :robots
  resources :hybrids
  namespace :api do
    namespace :v1 do
      resources :users
      
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# iTerm2
# insomnia.rest for api endpoint testing