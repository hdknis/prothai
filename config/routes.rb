Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: :show
  get 'static_pages/about'
  resources :blogs, only: [:index, :show]
end
