class CreateTags < ActiveRecord::Migration[7.1]
  def up
    create_table :tags do |t|
      t.string :name, :null => false
      t.references :parent_tag, foreign_key: { to_table: :tags }
      t.timestamps
    end
  end
  def down
    drop_table :tags
  end
end
