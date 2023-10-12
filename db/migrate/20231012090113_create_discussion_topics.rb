class CreateDiscussionTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :discussion_topics do |t|
      t.string :title, :null => false
      t.timestamps
    end
  end
end
