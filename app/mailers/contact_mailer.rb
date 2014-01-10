class ContactMailer < ActionMailer::Base
  default from: "fatihdurmus15@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact_send(subject, message, phone_number, email)
    @subject = subject
    @body = message
    @phone_number = phone_number
    @email = email
    mail to: "fatihdurmus15@gmail.com", subject: @subject
  end
end
