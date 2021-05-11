Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/courses', to: 'courses#index'

  get "courses/new", to: "courses#new"

  get '/courses/:id', to: 'courses#show', as: :course

  post "courses", to: "courses#create"

  get "courses/:id/edit", to: "courses#edit"
  patch "courses/:id", to: "courses#update"
  delete "courses/:id", to: "courses#destroy"

  get '/courses/:id/targets', to: 'courses#targets', as: :course_targets

  get "targets", to: "targets#index"
  get "targets/new", to: "targets#new"
  post "targets", to: "targets#create"
  get "targets/:id", to: "targets#show", as: :target
  get "targets/:id/edit", to: "targets#edit"
  patch "targets/:id", to: "targets#update"
  delete "targets/:id", to: "targets#destroy"

  get "targets/users/:user_id", to: "targets#mytargets", as: :mytargets

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

