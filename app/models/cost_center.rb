class CostCenter < ApplicationRecord
  belongs_to :account

  has_many :customerpos, dependent: :destroy
end
