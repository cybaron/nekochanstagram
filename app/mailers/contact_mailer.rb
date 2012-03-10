class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.notice.subject
  #
  def notice(contact)
    @name = contact.name
    @email = contact.email
    @message = contact.message

    mail to: "cybaron@gmail.com",
         from: @email,
         subject: "nekochanstagram contact"
  end
end
