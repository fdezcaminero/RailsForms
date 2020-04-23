class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 5..15 }
  validates :email, presence: true
  validates :password, presence: true, length: { in: 10..15 }
end
