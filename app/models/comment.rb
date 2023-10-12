class Comment < ApplicationRecord

  # Make polymorphic association between campaigns and discussion_topics
  belongs_to :commentable, polymorphic: true

  # Comments is created by specific user
  belongs_to :user

  # Active record validations
  validates :title, 
              presence: true, 
              length: {minimum: 1, maximum: 50}

end
