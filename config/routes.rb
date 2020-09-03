Rails.application.routes.draw do
  devise_for :users
  resources :users
  # add only routes for new, edit and show user
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "event#index"
end
