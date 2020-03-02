class Admins::ChildrenController < ApplicationController
  def index
  	@children = Child.all
  end

  def show
  	@child = Child.find(params[:id])
    @days = []
    @conditions = []
    @child.child_posts.each do |post|
      @days << post.created_at.strftime("%Y年%m月%d日")
      @conditions << post.condition
    end
    return @days
    return @conditions
  end

  def new
  	@child = Child.new
    @class_name = ClassName.new
  end

  def create
    @child = Child.new
  	@class_name = ClassName.new(child_params)
  	if @child.save
    	redirect_to admins_child_path(@child.id)
	  else
		  render :new
	  end
  end

  def edit
    @child = Child.find(params[:id])
  end

  def update
    @child = Child.find(params[:id])
    if @child.update(child_params)
      redirect_to admins_child_path(@child.id)
    else
      render :edit
    end
  end

  private
  def child_params
    params.require(:child).permit(:user_id, :name, :information)
  end
end
