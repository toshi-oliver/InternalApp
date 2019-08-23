Rails.application.routes.draw do
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  #ログイン&ログアウト
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #サインアップ
  namespace :admin do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
