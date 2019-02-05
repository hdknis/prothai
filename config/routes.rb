Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'products#index'
  resources :products, only: :show
  get 'static_pages/about'
  get 'static_pages/member'
  get 'static_pages/member_recruit'
  resources :blogs, only: :index
  get 'inquirys' => 'inquirys#index'              # 入力画面
  post 'inquirys/confirm' => 'inquirys#confirm'   # 確認画面
  post 'inquirys/thanks' => 'inquirys#thanks'     # 送信完了画面
end
