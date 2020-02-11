class Show < ApplicationRecord
	belongs_to :channel
	has_many :favorite_user_shows
	has_many :favorite_users, through: :favorite_user_shows, source: 'user'
	validates :name, :start_time, :end_time, presence: true
end
