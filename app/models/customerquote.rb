class Customerquote < ApplicationRecord
  belongs_to :cost_center

  has_many :customerpos, dependent: :destroy
end
