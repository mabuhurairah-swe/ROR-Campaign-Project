class ChangeUsersColumnToNull < ActiveRecord::Migration[7.1]
  def change
    change_column :users, 
      :email, :string, null: false    
  end
end
