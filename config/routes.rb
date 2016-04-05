Rails.application.routes.draw do
  devise_for :students
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "landings#show"

  resources :housing_applications, only: [:new, :create, :index, :show]
  resources :halls, only: [:index, :show]
  #resources :students, only: [dd

  #devise_scope :student do
  #  get "sign_in", to: "devise/sessions#new"
  #  get "sign_out", to: "devise/sessions#destroy"
  #end

  get  ':page', to: 'pages#static_page',  as: :static
end
