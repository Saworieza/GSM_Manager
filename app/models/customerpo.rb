class Customerpo < ApplicationRecord
  belongs_to :customerquote
  belongs_to :site
  belongs_to :scope

  has_many :invoices
 	has_many :sites
 	#Fix the sites relationship. Its clear its a has many & belongs to many
end
