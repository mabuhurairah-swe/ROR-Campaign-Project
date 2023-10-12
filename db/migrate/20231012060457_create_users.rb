class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :status
      t.string :profession
      t.string :service

      t.timestamps
    end
  end
end
