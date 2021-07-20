Rails.application.routes.draw do
  get 'sessions/new'
  post'sessions/create'
  delete 'sessions/destroy'

  resources :users, only: [:show, :create, :new]
  resources :stories

  get 'my_stories', to: 'stories#my_stories'
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
