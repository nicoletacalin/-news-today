class AdminController < ApplicationController
  load_and_authorize_resource

  def index
    @posts = Post.all
  end

  def posts
    @posts = Post.all
    respond_to do |format|
      format.html { render :posts }
      format.json { render json: @posts }
    end
  end
end
