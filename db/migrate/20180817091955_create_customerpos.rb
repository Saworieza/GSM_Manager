class CreateCustomerpos < ActiveRecord::Migration[5.0]
  def change
    create_table :customerpos do |t|
      t.integer :number
      t.date :date
      t.integer :amount
      t.belongs_to :customerquote, foreign_key: true

      t.timestamps
    end
  end
end
