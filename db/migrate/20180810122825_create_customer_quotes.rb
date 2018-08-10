class CreateCustomerQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_quotes do |t|
      t.string :name
      t.datetime :date
      t.integer :amount
      t.belongs_to :customer_po, foreign_key: true

      t.timestamps
    end
  end
end
