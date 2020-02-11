class ShowMailer < ApplicationMailer

	def send_reminder_mail(user, show)
		@user = user
		@show = show
		mail(to: @user.email, subject: "Reminder of your favorite show #{show.name}")
	end
end