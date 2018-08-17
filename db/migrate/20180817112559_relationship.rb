class Relationship < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :cutomerquotes, :sites
  	add_foreign_key :cutomerpos, :sites
  	add_foreign_key :cutomerpos, :scopes
  end
end
