Riffraffle::Application.routes.draw do
  resources :tickets

  root to: "pages#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
