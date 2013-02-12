SnowMobileRaffle::Application.routes.draw do

  resources :tickets

  root to: "pages#index"
end
