class CostCenter < ApplicationRecord
  belongs_to :account

  has_many :customerquotes, dependent: :destroy
end
