class ContactsController < ApplicationController
  def new
    @contact=Contact.new
    
  end
  
  def create
    @contact = Contact.new(contact_params)
      if @contact.save
        flash[:success] = "Message sent"
        redirect_to new_contact_path
          first_Name = params[:contact][:first_Name]
          last_Name = params[:contact][:last_Name]
          email = params[:contact][:email]
          body = params[:contact][:comments]
          ContactMailer.contact_email(first_Name, last_Name, email, body).deliver
      else
        flash[:danger] = @contact.errors.full_messages.join(", ")
        redirect_to new_contact_path
      end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:first_Name, :last_Name, :email, :comments)
  end
  
  
end
