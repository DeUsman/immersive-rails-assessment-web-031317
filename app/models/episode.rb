class Episode < ApplicationRecord
	has_many :guest_appearances
	has_many :guests, through: :guest_appearances

end
