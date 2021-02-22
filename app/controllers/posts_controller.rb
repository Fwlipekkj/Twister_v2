class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(8)
  end
end
