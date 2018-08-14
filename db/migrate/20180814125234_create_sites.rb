class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :number
      t.integer :tower_height
      t.belongs_to :town, foreign_key: true
      t.belongs_to :status, foreign_key: true
      t.belongs_to :scope, foreign_key: true
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
