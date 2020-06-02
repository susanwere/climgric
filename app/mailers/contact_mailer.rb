class ContactMailer < ApplicationMailer
  default from: 'susanwere15@gmail.com'

  def received_email
    @contact = params[:contact]
    @cart = params[:cart]
    mail(to: 'sales@climgricafrica.com',  subject: "Message from #{params[:contact].first_name}!") do |format|
      format.html { render layout: 'received_email' }
      format.text
    end
  end
end
