class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def new
    
  end

  def show
    # パラメータ値を代入
    id = params[:id]
    @show = Post.find_by(id: id)
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end


end
