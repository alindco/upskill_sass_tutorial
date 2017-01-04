class ContactMailer < ActionMailer::Base
  default to: 'akl@alindco.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'contact form message')
    
    
  end
end