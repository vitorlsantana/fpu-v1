Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "targets", to: "targets#index"
  get "targets/new", to: "targets#new"
  get "targets/:id", to: "targets#show", as: :target
  post "targets", to: "targets#create"
  get "targets/:id/edit", to: "targets#edit"
  patch "targets/:id", to: "targets#update"
  delete "targets/:id", to: "targets#destroy"

  get "targets/users/:user_id", to: "targets#mytargets", as: :mytargets

  resources :persons, only: [ :show, :index, :edit, :update, :new, :create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
