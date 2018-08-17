class Site < ApplicationRecord
  belongs_to :status
  belongs_to :scope
  belongs_to :town
  belongs_to :customerpo
  belongs_to :region
end
