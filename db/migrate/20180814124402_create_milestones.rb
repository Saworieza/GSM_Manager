class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :type
      t.integer :stage
      t.belongs_to :customerpo, foreign_key: true

      t.timestamps
    end
  end
end
