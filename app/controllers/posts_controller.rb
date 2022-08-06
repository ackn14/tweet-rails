class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  # showアクションよりも上に書かないとエラーになる
  def new
    
  end
  def show
    # パラメータ値を代入
    id = params[:id]
    @show = Post.find_by(id: id)
  end
  def create
    # textareaタグのname属性に指定した値を引数に指定
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to('/posts/index')
  end
end
