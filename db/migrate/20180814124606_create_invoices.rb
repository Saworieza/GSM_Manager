class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.integer :number
      t.integer :amount
      t.belongs_to :status, foreign_key: true
      t.belongs_to :milestone, foreign_key: true
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
