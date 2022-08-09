class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def new
    
  end

  def show
    # パラメータ値を代入
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def create
    @post = Post.new(
      content: params[:content],#投稿内容
      user_id: @current_user.id #ログイン中のユーザーID
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end


end
