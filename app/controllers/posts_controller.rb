class PostsController < ApplicationController
  PER_PAGES = 10

  def index
    @posts = Post.order(created_at: :desc).page(params[:page]).per(PER_PAGES)
  end

  def create
  end
end
