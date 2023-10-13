class NoviceUser < User

  # These fields are not accessible by Novice User
  validates :profession, 
              absence: true

  validates :service, 
              absence: true
              
end
