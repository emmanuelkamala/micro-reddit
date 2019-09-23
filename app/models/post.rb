# frozen_string_literal: true

#anti-linter comment
class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end
