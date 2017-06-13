class ContactMailer < ActionMailer::Base
  default to: 'chris@christophermdalton.com'
  
  def contact_email(first_Name, last_Name, email, body)
    @firstname = first_Name
    @lastname = last_Name
    @email = email
    @body = body
    mail(from: email, subject: 'Contact Form Message')
  end
end