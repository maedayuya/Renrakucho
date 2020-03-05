class ChildPostsController < ApplicationController
  def show
  	@child = Child.find(params[:child_id])
    @child_post = ChildPost.find(params[:id])

  end
end
