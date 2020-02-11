class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorite_user_shows
	has_many :favorite_shows, through: :favorite_user_shows, source: :show

	def added_in_favorites(show_id)
		favorite_shows.ids.include?(show_id)
	end
end
	