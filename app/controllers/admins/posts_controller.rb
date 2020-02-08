class Admins::PostsController < ApplicationController
  before_action :authenticate_admin!
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def create
  	@post = Post.new(post_params)
  	@post.admin_id = current_admin.id
  	if @post.save
       redirect_to admins_post_path(@post.id)
  	else
  	  @posts = Post.all
  	  render :index
  	end
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update
       redirect_to admins_post_path(@post.id)
  	else
  	  render :edit
  	end
  end

  private

  def post_params
  	params.require(:post).permit(:title,:body)
  end
end
