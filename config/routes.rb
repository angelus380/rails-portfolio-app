Rails.application.routes.draw do
  root 			"welcome#index"
  get 			"/dashboard", to: "dashboard#index"
  resources :articles
  resources :projects
end
