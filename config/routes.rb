Rails.application.routes.draw do
  get 'posts/index' => 'posts#index'
  # showアクションよりも上に書かないとエラーになる
  get "posts/new" => "posts#new"
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "about" => "home#about"
  # Defines the root path route ("/")
  # root "articles#index"
end
