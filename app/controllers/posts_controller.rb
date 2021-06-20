class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    post = Post.create!(post_params) 
    redirect_ro root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
