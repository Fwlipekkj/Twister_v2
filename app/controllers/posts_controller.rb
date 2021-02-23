class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(8).reorder(created_at: :desc)
  end

  def create
    @post = Post.new(**post_params, user: User.first)
    if !@post.save
      flash[:error] = "O post não foi salvo"
    end
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:message)
  end
end
