class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.integer :number
      t.string :name
      t.string :status
      t.integer :towerheight
      t.string :town
      t.string :town_class
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
