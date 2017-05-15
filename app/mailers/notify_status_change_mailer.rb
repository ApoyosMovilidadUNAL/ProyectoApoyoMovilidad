class NotifyStatusChangeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify_status_change_mailer.notify.subject
  #
  def notify(person,status)
  	@person = person
  	@status = status

    mail to: person.email, subject:'Notificacion de Apoyo Movilidad UN'
  end
end
