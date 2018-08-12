class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.integer :number
      t.integer :amount
      t.string :status
      t.string :milestonetype
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
