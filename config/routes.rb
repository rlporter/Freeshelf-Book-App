Rails.application.routes.draw do
  get 'users/new'

  get 'welcome/index'

  resources :books
  resources :users
  resources :sessions

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
