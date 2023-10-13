class User < ApplicationRecord

  # Association between user and campaigns
  has_many :campaigns, dependent: :destroy

  # Association between user and discussion topics
  has_many :discussion_topics, dependent: :destroy

  # Association between user and comments
  has_many :comments, dependent: :destroy

  # Validates user properties
  validates :email, 
              presence: true,
              uniqueness: {message: 'An account with this email %{value} already exists'},
              length: {minimum: 1, maximum: 30}

  validates :username, 
              presence: true,
              length: {minimum: 1, maximum: 20}

  validates :status, 
              presence: true,
              length: {minimum: 1, maximum: 15}

  validates :profession, 
              length: {minimum: 1, maximum: 30}

  validates :service, 
              length: {minimum: 1, maximum: 30}

  # Custom validation to check if the user is qualified, not qualified or banned
  validate :validate_user_status

  enum type: {
    ExpertUser: 'ExpertUser',
    NoviceUser: 'NoviceUser'
  }

  private
    def validate_user_status
      if status != 'Qualified' || status != 'Not Qualified' || status != 'Banned'
        errors.add(:status, "User status must be 'Qualified' or 'Not Qualified' or 'Banned'")
      end
    end

end
