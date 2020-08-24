Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'api/v1/users', to: 'api/v1/users#index'
  get 'api/v1/users/:id', to: 'api/v1/users#show'
  post 'api/v1/users', to: 'api/v1/users#create'
  put 'api/v1/users/:id', to: 'api/v1/users#update'
  delete 'api/v1/users/:id', to: 'api/v1/users#destroy'

  get 'api/v2/users', to: 'api/v2/restusers#index'
  get 'api/v2/users/:id', to: 'api/v2/restusers#show'
  post 'api/v2/users', to: 'api/v2/restusers#create'
  put 'api/v2/users/:id', to: 'api/v2/restusers#update'
  delete 'api/v2/users/:id', to: 'api/v2/restusers#destroy'
end
