class ExpertUser < User

  # These fields are accessible by Expert User 
  validates :email, 
              presence: true

  validates :username, 
              presence: true

  validates :status, 
              presence: true

  validates :profession, 
              presence: true

  validates :service, 
              presence: true
              
end
