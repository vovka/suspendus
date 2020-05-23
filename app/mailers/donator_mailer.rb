class DonatorMailer < ApplicationMailer
  default from: "suspendus@example.com"

  def payment_confirmation
    @donate = params[:donate]
    mail(to: @donate.user.email, subject: "Payment successful")
  end
end
