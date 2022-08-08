Rails.application.routes.draw do
  # ユーザー一覧
  get 'users/index' => 'users#index'
  # ユーザー詳細
  get 'users/:id' => 'users#show'
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
