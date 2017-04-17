class Guest < ApplicationRecord
	has_many :guest_appearances
	has_many :episodes, through: :guest_appearances
	validates :name, presence: true
	validates :occupation, presence: true

end
