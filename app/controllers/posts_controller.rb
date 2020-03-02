class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@posts = Post.all.reverse_order
  end

  def show
  	@post = Post.find(params[:id])
  end
end
