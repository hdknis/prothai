Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: :show
  get 'static_pages/about'
  resources :blogs, only: [:index, :show]
  get 'inquirys' => 'inquirys#index'              # 入力画面
  post 'inquirys/confirm' => 'inquirys#confirm'   # 確認画面
  post 'inquirys/thanks' => 'inquirys#thanks'     # 送信完了画面
end
