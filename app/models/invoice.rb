class Invoice < ApplicationRecord
  belongs_to :status
  belongs_to :scope
  belongs_to :customerpo
end
