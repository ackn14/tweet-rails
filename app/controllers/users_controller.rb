class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @show = User.find_by(id: params[:id])
  end
  def edit
    @user = User.find_by(id: params[:id])
    pp @user
  end
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/#{@user.id}/edit")
    end    
  end
end
