# frozen_string_literal: true

#anti-linter comment
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
end
