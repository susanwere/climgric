class ContactMailer < ApplicationMailer
  default from: 'susanwere15@gmail.com'

  def received_email
    @contact = params[:contact]
    @cart = params[:cart]
    mail(to: @cart.line_items.empty? ? 'sales@climgricafrica.com' : 'franchise@climgricafrica.com',  
         from: 'climgricpurchases@gmail.com', 
         subject: "Message From #{params[:contact].first_name.capitalize}!") do |format|
      format.html { render layout: 'received_email' }
      format.text
    end
  end
end
