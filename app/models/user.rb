class User < ApplicationRecord
  has_secure_password
  has_many :tasks

  validates :name, :email, presence: true
  validates :password, length: {minimum: 8}
  validates :email, email: true
end
