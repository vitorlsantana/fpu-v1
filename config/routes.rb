Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "persons", to: "persons#index"
  get "persons/:id", to: "persons#show", as: :people
  get "persons/new", to: "persons#new"
  post "persons", to: "persons#create"
  get "persons/:id/edit", to: "persons#edit"
  patch "persons/:id", to: "persons#update"
  delete "persons/:id", to: "persons#destroy"

  resources :persons, only: [ :show, :index, :edit, :update, :new, :create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
