class User < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true,
    uniqueness: { message: 'That email has already been registered' },
    format: VALID_EMAIL_REGEX
  validates :first_name, presence: true  
  validates :last_name, presence: true  
end
