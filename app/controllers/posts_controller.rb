class PostsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @posts = pagy(Post.all.order(created_at: :desc), items: 10)

    respond_to do |format|
      format.html
      format.json {
        render json: { entries: render_to_string(partial: "posts", formats: [:html]), pagination: view_context.pagy_nav(@pagy) }
      }
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if !@post.save
      flash[:error] = "Não foi possivel salvar o Post."
    end

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:message)
  end
end
