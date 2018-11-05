Rails.application.routes.draw do
  get "welcome/index"

  resources :articles
  resources :projects

  root "welcome#index"
end
