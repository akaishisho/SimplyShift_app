Rails.application.routes.draw do

# 顧客用
# URL /uers/sign_in ...
devise_for :users, skip:[:passwords], controllers:{
  registrations: "public/registrations",
  sessions: "public/sessions"
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip:[:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

# ゲストログイン用
devise_scope :user do
  post 'public/guest_sign_in', to: 'public/sessions#guest_sign_in'
end

namespace :admin do
  resources :shifts, only: [:index, :edit, :update]
end

scope module: :public do
  root 'homes#top'
  get 'inquiry/index' => 'inquiry#index' # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm' # 確認画面
  post 'inquiry/thanks'  => 'inquiry#thanks' # 送信完了画面
  get '/about' => 'homes#about'
  resources :shifts, only: [:index, :create, :edit, :update, :destroy]
end


end
