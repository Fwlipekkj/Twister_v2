class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(8).reorder(created_at: :desc)
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    unless @post.save
      flash[:error] = "Não foi possivel salvar o Post."
    end

    redirect_to posts_path

  end

  private
  def post_params
    params.require(:post).permit(:message)
  end
end
