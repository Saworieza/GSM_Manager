class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.integer :number
      t.string :name
      t.string :tower_height
      t.string :town
      t.string :town_classification
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end