class Customerpo < ApplicationRecord
  belongs_to :cost_center

  has_many :customerquotes
  has_many :invoices
  has_many :sites
end
