class Admins::AdminsController < ApplicationController
  before_action :authenticate_admin!
  def index
  	@admins = Admin.all
  end

  def show
  	@admin = Admin.find(params[:id])
  	@class_names = ClassName.where(admin_id: @admin.id)
  end

  def edit
  end
end
