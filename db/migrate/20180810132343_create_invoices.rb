class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.integer :number
      t.integer :amount
      t.string :status
      t.string :milestone_type
      t.belongs_to :customer_po, foreign_key: true

      t.timestamps
    end
  end
end
