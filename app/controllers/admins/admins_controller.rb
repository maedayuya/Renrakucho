class Admins::AdminsController < ApplicationController
  def index
  	@admins = Admin.all
  end

  def show
  end

  def edit
  end
end
