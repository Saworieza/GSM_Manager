class CostCenter < ApplicationRecord
  belongs_to :account

  has_many :customer_pos, dependent: :destroy
end
