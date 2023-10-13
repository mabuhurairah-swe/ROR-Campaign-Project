class Campaign < ApplicationRecord

  # Campaigns is created by specific user (Expert user)
  belongs_to :user

  # Campaigns has many comments
  has_many :comments, as: :commentable, dependent: :destroy

  # Campaigns has many discussion topics
  has_many :discussion_topics

  # Campaign has many tags
  has_and_belongs_to_many :tags

  # Active record validations
  validates :title, 
              presence: true,
              length: {minimum: 1, maximum: 50}

  validates :purpose, 
              presence: true, 
              length: {minimum: 1, maximum: 100}

  validates :estimated_duration, 
              presence: true

  validate :user_must_be_expert, on: :create

  private
    def user_must_be_expert
      unless user.ExpertUser?
        errors.add(:user, "only expert users create campaigns")
      end
    end

end
