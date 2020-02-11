class Channel < ApplicationRecord
	has_many :shows, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end
