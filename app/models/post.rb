# frozen_string_literal: true

# anti-linter comment
class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { minimum: 80 }
  belongs_to :user
  has_many :comments
end
