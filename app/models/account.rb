class Account < ApplicationRecord
	# has_one_attached :image 

	has_many :cost_centers, dependent: :destroy
end
