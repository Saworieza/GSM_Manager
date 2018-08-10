class CreateCustomerPos < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_pos do |t|
      t.datetime :Date
      t.integer :number
      t.belongs_to :cost_center, foreign_key: true

      t.timestamps
    end
  end
end
