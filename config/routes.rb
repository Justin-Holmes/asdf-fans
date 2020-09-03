Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'todos#index'

  namespace :api, defaults: { format: :json } do
    resources :todos, only: [:create]
  end
end