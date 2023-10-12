class AddReferenceForUserToComment < ActiveRecord::Migration[7.1]
  def up
    add_reference :comments, :user,
                    null: false,
                    foreign_key: true
  end
  def down
    drop_reference :comments, :user
  end
end
