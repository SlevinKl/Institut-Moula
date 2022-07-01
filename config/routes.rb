Rails.application.routes.draw do
  get 'dashboards/display'
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  get 'prestations/index'
  get 'prestations/new'
  get 'prestations/create'
  get 'prestations/edit'
  get 'prestations/update'
  get 'prestations/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
