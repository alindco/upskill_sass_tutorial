# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActiveMailer::base.smtp_settings = {
  :port       => ENV['MAILGUN_SMTP_PORT'],
  :address       => ENV['MAILGUN_SMTPT_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain       =>'akl-saas.herokuapp.com',
  :authentication      => plain,
}
ActionMailer::Base.delivery_method = :smtp