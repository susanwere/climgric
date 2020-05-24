class ContactController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.with(contact: @contact).received_email.deliver_now
      redirect_to '/', notice: "Thank you! We'll be in touch."
    else
      @first_key, @first_value = @contact.errors.messages.first
      render :index
    end
  end

  private

  def contact_params
    params[:contact].permit(:first_name, :last_name, :email, :phone, :message)
  end
end
