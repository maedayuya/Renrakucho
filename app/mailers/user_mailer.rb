class UserMailer < ApplicationMailer
  def notice
  	@admin = params[:admin]
  	@user = params[:user]
  	@child = params[:child]
  	@child_post = params[:child_post]
  	mail(to: @user.email, subject: '本日の連絡帳です')
  end

end
