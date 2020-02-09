class Admins::AdminsController < ApplicationController
  def index
  	@admins = Admin.all
  end

  def show
  	@class_names = ClassName.where(admin_id: current_admin.id)
  end

  def edit
  end
end
