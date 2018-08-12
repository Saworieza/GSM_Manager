class CreateScopes < ActiveRecord::Migration[5.0]
  def change
    create_table :scopes do |t|
      t.string :type
      t.belongs_to :site, foreign_key: true

      t.timestamps
    end
  end
end
