class CreateCampaigns < ActiveRecord::Migration[7.1]
  def up
    create_table :campaigns do |t|
      t.string :title, :null => false
      t.text :purpose, :null => true
      t.string :estimated_duration, :null => false

      t.timestamps
    end
  end
  def down
    drop_table :campaigns
  end
end
