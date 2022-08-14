Rails.application.routes.draw do
  # ユーザー一覧
  get 'users/index' => 'users#index'
  # ユーザー詳細
  get 'users/:id' => 'users#show'
  # ユーザー新規登録画面
  get "signup" => "users#new"
  # ユーザーログイン画面
  get "login" => "users#login"
  # ユーザーログイン実行
  post "login" => "users#login_execution"
  # ユーザーログアウト実行
  get "logout" => "users#logout_execution"
  # ユーザー新規登録
  post "users/create" => "users#create"
  # ユーザー編集入力画面
  get 'users/:id/edit' => 'users#edit'
  # ユーザー編集実行
  post 'users/:id/update' => 'users#update'
  # 投稿一覧
  get 'posts/index' => 'posts#index'
  # 新規投稿
  get "posts/new" => "posts#new"
  # 投稿詳細
  get 'posts/:id' => 'posts#show'
  # 投稿実行
  post 'posts/create' => 'posts#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "about" => "home#about"
  # Defines the root path route ("/")
  # root "articles#index"
end
