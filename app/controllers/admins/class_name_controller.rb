class Admins::ClassNameController < ApplicationController
  before_action :authenticate_admin!
  def new
  	@class_name = ClassName.new
  end

  def create
  	@class_name = ClassName.new(class_name_params)
  	if @class_name.save
    	redirect_to admins_class_name_path(@class_name.id)
	  else
		render :new
	  end
  end

  def index
    @class_names = ClassName.all
  end

  def show
    @class_name = ClassName.find(params[:id])
    @count = 0
    @class_name.children.each do |child|
      if child.child_posts.where("created_at >= ?", Time.zone.now.beginning_of_day).present? == false
        @count += 1
      end
    end
  end

  def edit
    @class_name = ClassName.find(params[:id])
  end

  def update
    @class_name = ClassName.find(params[:id])
    if @class_name.update(class_name_params)
      redirect_to admins_class_name_path(@class_name.id)
    else
    render :edit
    end

  end

  def destroy
    class_name = ClassName.find(params[:id])
    class_name.destroy
    redirect_to admins_class_name_index_path
  end

  private
  def class_name_params
    params.require(:class_name).permit(:name, :admin_id,
    	children_attributes: [:id, :user_id, :name, :information, :_destroy])
  end

end
