class HomeController < ApplicationController
  def top
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
