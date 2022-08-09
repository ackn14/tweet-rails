class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find_by(id: params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.jpg"
    )
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end
  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]

    # 画像が送信されているか確認
    if params[:image]
      # 画像ファイル名 ユーザー番号.jpg
      @user.image_name = "#{@user.id}.jpg"

      # inputタグのname属性を指定することで取得可能
      image = params[:image]

      # 画像保存
      # 第一引数はファイルパス、第二引数はファイルの中身を指定
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/#{@user.id}/edit")
    end
  end
  def login

  end
end
