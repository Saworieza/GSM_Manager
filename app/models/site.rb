class Site < ApplicationRecord
  belongs_to :town
  belongs_to :status
  belongs_to :scope
  belongs_to :customerpo
end
