Rails.application.routes.draw do
  devise_for :users
  get 'cals/index'
  get 'navis/index'
  get 'home/index'
  root 'home#index'
  resources :cals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
