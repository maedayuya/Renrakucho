class Admins::ChildPostsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @child_posts = ChildPost.all
  end

  def show
    @child = Child.find(params[:child_id])
    @child_post = ChildPost.find(params[:id])
  end

  def new
    @child = Child.find(params[:child_id])
    if @child.child_posts.where("created_at >= ?", Time.zone.now.beginning_of_day).present?
      flash[:notice] = '本日は既に投稿済みです'
      redirect_to admins_child_path(@child.id)
    end
    @child_post = ChildPost.new
  end

  def create
    @child = Child.find(params[:child_id])
    if @child.child_posts.where("created_at >= ?", Time.zone.now.beginning_of_day).present?
      flash[:notice] = '本日は既に投稿済みです'
      redirect_to admins_child_path(@child.id)
    end
    @child_post = ChildPost.new(child_post_params)
    if @child_post.save
      AdminMailer.with(admin: @child_post.admin,child: @child,child_post: @child_post).notice.deliver_later
      UserMailer.with(admin: @child_post.admin,user: @child.user,child: @child,child_post: @child_post).notice.deliver_later
      redirect_to admins_child_child_post_path(@child.id,@child_post.id)
    else
      render :new
    end
  end

  def edit
    @child = Child.find(params[:child_id])
    @child_post = ChildPost.find(params[:id])
  end

  def update
    @child = Child.find(params[:child_id])
    @child_post = ChildPost.find(params[:id])
    if @child_post.update(child_post_params)
      redirect_to admins_child_child_post_path(@child.id,@child_post.id)
    else
      render :edit
    end
  end

  def destroy
    child = Child.find(params[:child_id])
    child_post = ChildPost.find(params[:id])
    child_post.destroy
    redirect_to admins_child_path(child.id)
  end

  private
  def child_post_params
    params.require(:child_post).permit(:admin_id,:child_id,:title,:body,:image,:condition)
  end
end
