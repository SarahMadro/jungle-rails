class ReceiptMailer < ApplicationMailer

  def receipt_email order
    @order = order
    mail(to: order.email, subject: 'Order Receipt')
  end
end
