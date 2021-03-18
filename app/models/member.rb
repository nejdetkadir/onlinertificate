class Member < ApplicationRecord
  
  # validates
  validates :fullname, presence: true
  validates :phone_number, presence: true
  validates :from, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }, format: { with: VALID_EMAIL_REGEX }

  before_create :set_code

  def set_code
    self.code = SecureRandom.uuid
  end
end
