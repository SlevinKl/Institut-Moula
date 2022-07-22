Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "dashboards#display", as: "dashboard"
  resources :contacts, only: %i[new create destroy]
  resources :prestations, only: %i[index new create show edit update destroy]
  resources :articles, only: %i[index new create show edit update destroy]
end
