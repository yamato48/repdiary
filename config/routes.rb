Rails.application.routes.draw do
  root to: 'reptiles#index'
  devise_for :users
  resources :records
  resources :reptiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
