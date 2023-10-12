class AddRefrenceCoulmnToCampaign < ActiveRecord::Migration[7.1]
  def up
    add_reference :campaigns, :user,
                    null: false,
                    foreign_key: true
  end
  def down
    remove_reference :campaigns, :user
  end
end
