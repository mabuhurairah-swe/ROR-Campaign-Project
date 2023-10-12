class DiscussionTopic < ApplicationRecord

  # Discussion topics is created by the specific user (Novice User)
  belongs_to :user

  # Discussion topics has many comments
  has_many :comments, as: :commentable, dependent: :destroy

  # Discussion topics is created on the basis of specific campaign
  belongs_to :campaign

  #Active record validations
  validates :title, 
              presence: true,
              length: {minimum: 1, maximum: 100}


end
