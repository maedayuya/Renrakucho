class AdminMailer < ApplicationMailer
  def notice
  	@admin = params[:admin]
  	@child = params[:child]
  	@child_post = params[:child_post]
  	mail(to: @admin.email, subject: '投稿完了通知メール')
  end
end
