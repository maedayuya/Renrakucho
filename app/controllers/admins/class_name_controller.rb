class Admins::ClassNameController < ApplicationController
  def new
  	@class_name = ClassName.new
  end

  def create
  	@class_name = ClassName.new(class_name_params)
  	if @class_name.save
    	redirect_to admins_admin_path(current_admin.id)
	  else
		render :new
	  end
  end

  def index
    @class_names = ClassName.all
  end

  def show
    @class_name = ClassName.find(params[:id])
  end

  private
  def class_name_params
    params.require(:class_name).permit(:name, :admin_id,
    	children_attributes: [:id, :user_id, :name, :information, :_destroy])
  end
end
