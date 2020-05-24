class ContactMailer < ApplicationMailer
  default from: 'sales@climgricafrica.com'

  def received_email
    @contact = params[:contact]
    mail(to: 'climgric@gmail.com',  subject: "Message from #{params[:contact].first_name}!") do |format|
      format.html { render layout: 'received_email' }
      format.text
    end
  end
end