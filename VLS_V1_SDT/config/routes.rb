Rails.application.routes.draw do
  resources :recipes
  resources :workers
  resources :people
  get 'employeessearch/index'
  get 'employeessearch/search'

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  resources :employees
  devise_for :users
  get 'welcome/index'

  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
