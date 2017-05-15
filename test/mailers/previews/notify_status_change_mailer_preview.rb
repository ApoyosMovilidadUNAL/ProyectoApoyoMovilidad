# Preview all emails at http://localhost:3000/rails/mailers/notify_status_change_mailer
class NotifyStatusChangeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notify_status_change_mailer/notify
  def notify
    NotifyStatusChangeMailer.notify
  end

end
