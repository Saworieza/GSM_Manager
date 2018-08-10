class CreateCustomerquotes < ActiveRecord::Migration[5.0]
  def change
    create_table :customerquotes do |t|
      t.string :name
      t.date :date
      t.integer :amount
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
