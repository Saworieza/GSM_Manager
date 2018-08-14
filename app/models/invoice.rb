class Invoice < ApplicationRecord
  belongs_to :status
  belongs_to :milestone
  belongs_to :customerpo
end
