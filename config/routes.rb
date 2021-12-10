Rails.application.routes.draw do

# 顧客用
# URL /uers/sign_in ...
devise_for :users, skip:[:passwords], controllers:{
  registrations: "public/registrations",
  sessions: "public/sessions"
}


namespace :admin do
  resources :shifts, only: [:edit, :update]
end

scope module: :public do
  root 'homes#top'
  get '/about' => 'homes#about'
  resources :shifts, only: [:index, :create, :edit, :update]
end


end
