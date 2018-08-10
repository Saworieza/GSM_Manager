class Account < ApplicationRecord
	has_many :cost_centers, dependent: :destroy
end
