class CreateCampaignTagsJoinTable < ActiveRecord::Migration[7.1]
  def up
    create_join_table :tags, :campaigns
  end
  def down
    
  end
end
