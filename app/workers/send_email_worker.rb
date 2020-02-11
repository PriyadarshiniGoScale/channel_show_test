class SendEmailWorker
  include Sidekiq::Worker

  def perform(user_id, show_id)
    ShowMailer.send_reminder_mail(User.find_by(id: user_id), Show.find_by(id: show_id)).deliver
  end
end
