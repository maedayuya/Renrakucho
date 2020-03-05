class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user
  def show
  	@user = User.find(params[:id])
  	@user.children.each do |child|
  	@child = child
	end
  end

  private
  def correct_user
  	@user = User.find(params[:id])
  	if @user.id != current_user.id
  	redirect_to user_path(current_user.id)
  	end
  end
end
