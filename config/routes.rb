Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "contact", to: "pages#contact", as: "contact"
  get "dashboard", to: "pdashboards#display", as: "dashboard"
  resources :prestations, only: %i[index new create show edit update destroy]
  resources :articles, only: %i[index new create show edit update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
