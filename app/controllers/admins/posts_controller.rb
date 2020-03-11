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
  	  render :new
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
  	if @post.update(post_params)
       redirect_to admins_post_path(@post.id)
  	else
  	  render :edit
  	end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to admins_posts_path
  end

  private

  def post_params
  	params.require(:post).permit(:title,:body)
  end
end
