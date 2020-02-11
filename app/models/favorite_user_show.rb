class FavoriteUserShow < ApplicationRecord
	belongs_to :user
	belongs_to :show

	after_create :create_job
	before_destroy :delete_job

	def create_job
		job_id = SendEmailWorker.perform_in(30.minutes, user_id, show_id)
		self.update(reminder_job_id: job_id)
	end

	def delete_job
		require 'sidekiq/api'
		queue = Sidekiq::Queue.new('default')
		queue.find_job(reminder_job_id).delete if queue.find_job(reminder_job_id).present?
	end
end
