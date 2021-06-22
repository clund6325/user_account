class User < ApplicationRecord
  validates :join, :username, :membership, presence: true
  validates :username, uniqueness: true
  validates :membership, inclusion: {
    in: %w(Bronze Silver Gold Platinum)
  }
end
