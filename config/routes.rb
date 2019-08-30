Rails.application.routes.draw do
  root to: 'posts#new'
  resources :posts
  #ログイン&ログアウト
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #サインアップ
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    new do
      post :confirm, action: :confirm_new
      get :confirm, action: :new
    end
  end

end
