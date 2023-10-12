class AddReferenceColumnForCampaignToDiscussionTopic < ActiveRecord::Migration[7.1]
  def up
    add_reference :discussion_topics, :campaign,
                    null: false,
                    foreign_key: true
  end
  def down
    remove_reference :discussion_topics, :campaign
  end
end
