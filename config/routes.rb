Rails.application.routes.draw do
  get 'home/show'
  get 'home/info'
  root to: "home#index"
  resources :categories
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
