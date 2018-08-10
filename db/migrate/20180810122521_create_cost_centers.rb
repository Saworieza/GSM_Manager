class CreateCostCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :cost_centers do |t|
      t.integer :number
      t.text :details
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
