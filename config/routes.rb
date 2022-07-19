Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "dashboards#display", as: "dashboard"
  resources :prestations, only: %i[index new create show edit update destroy]
  resources :articles, only: %i[index new create show edit update destroy]
  resources :contacts, only: %i[new create destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
