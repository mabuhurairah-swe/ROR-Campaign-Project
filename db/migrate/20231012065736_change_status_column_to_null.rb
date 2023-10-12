class ChangeStatusColumnToNull < ActiveRecord::Migration[7.1]
    def up
      change_column :users, 
        :status, :string,
          :null => false
    end
    def down
      change_column :users, 
        :status, :string,
        :null => true
    end
end
