# frozen_string_literal: true

# anti-linter comment
class Comment < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 20 }
  belongs_to :user
  belongs_to :post
end
