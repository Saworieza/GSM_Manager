class CreateCustomerpos < ActiveRecord::Migration[5.0]
  def change
    create_table :customerpos do |t|
      t.datetime :date
      t.integer :number
      t.belongs_to :cost_center, foreign_key: true

      t.timestamps
    end
  end
end
