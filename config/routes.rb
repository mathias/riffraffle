Riffraffle::Application.routes.draw do
  resources :tickets, only: [:index, :show]

  get '/import' => 'imports#new'
  post '/import' => 'imports#create'

  root to: "pages#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
