class Customerpo < ApplicationRecord
  belongs_to :customerquote

  has_many :sites, dependent: :destroy
  has_many :invoices, dependent: :destroy
  has_many :milestones, dependent: :destroy
end
