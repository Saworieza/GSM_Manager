class Customerquote < ApplicationRecord
  belongs_to :cost_center
  belongs_to :site

  has_one :customerpo
end
