class CreateComments < ActiveRecord::Migration[7.1]
  def up
    create_table :comments do |t|
      t.string :title, :null => false
      t.references :commentable, polymorphic: true, null: false
      t.timestamps
    end
  end
  def down
    drop_table :comments
  end
end
