class Rename < ActiveRecord::Migration[5.0]
  def change
  	#used a reserved name
  	rename_column :milestones, :type, :milestone_type
  	rename_column :scopes, :type, :scope_type
  end
end
