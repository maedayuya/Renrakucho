class Admins::ClassNameController < ApplicationController
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
    if @class_name.update(uclass_name_params)
      redirect_to admins_class_name_path(@class_name.id)
    else
    render :edit
    end

  end

  private
  def class_name_params
    params.require(:class_name).permit(:name, :admin_id,
    	children_attributes: [:id, :user_id, :name, :information, :_destroy])
  end
  def uclass_name_params
    params.require(:class_name).permit(:name, :admin_id,
      child: [:id, :user_id, :name, :information])
  end
end
