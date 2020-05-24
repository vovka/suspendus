class EstablishmentMailer < ApplicationMailer
  default from: "suspendus@example.com"

  def new_donation
    @donate = params[:donate]
    if @donate.establishment.users.any? && @donate.establishment.users.first.email.present?
      mail(to: @donate.establishment.users.first.email, subject: "New donation")
    end
  end
end
