class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :milestone_type
      t.integer :stage

      t.timestamps
    end
  end
end
