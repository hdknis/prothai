Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'static_pages#home'
  resources :products, only: [:index,:show]
  get 'static_pages/about'
  get 'static_pages/member'
  get 'static_pages/member_recruit'
  resources :blogs, only: :index
  get 'inquirys' => 'inquirys#index'              # 入力画面
  get 'inquirys/confirm' => redirect("/inquirys")
  get 'inquirys/thanks' => redirect("/inquirys")
  post 'inquirys/confirm' => 'inquirys#confirm'   # 確認画面
  post 'inquirys/thanks' => 'inquirys#thanks'     # 送信完了画面
end
