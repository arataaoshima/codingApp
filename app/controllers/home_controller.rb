class HomeController < ApplicationController
  layout 'home_layout'
  before_action :admin_user, only: [:all_users, :edit_user, :update_user, :delete_user]

  def top
  end

  def all_users
    @users = User.all
  end

  def edit_user
    @user = User.find(params[:id])
  end

  def update_user
    @user = User.find_by(id: params[:id])
    @user.update(name: params[:name], email:params[:email], admin: params[:admin])
    redirect_to all_users_path
  end

  def delete_user
    @user = User.find_by(id:params[:id])
    @user.destroy
    redirect_to all_users_path
  end

  def about
  end

  def index
  end

  def addlist
    @like = Like.new
    @like.user_id = current_user.id
    @like.article_id = params[:article_id]
    @like.save
    redirect_to "/articles/#{@like.article_id}"
  end

  def deletelist
    @like = Like.find_by(user_id: current_user.id, article_id: params[:article_id])
    @like.destroy
    redirect_to "/articles/#{@like.article_id}"
  end

end
