# frozen_string_literal: true
class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 6, maximum: 25 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_many :posts
  has_many :comments
end
