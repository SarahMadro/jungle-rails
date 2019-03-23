class ReceiptMailer < ApplicationMailer

  default from: "no-reply@jungle.com"

  def receipt_email
    @user = params[:user]
    email_with_name = % ("#{@user.name" <#{@user.email}>)
    mail(to: @user.email, subject: "JUNGLE order: " @order_id)
  end
end
