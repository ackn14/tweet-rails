class Post < ApplicationRecord
  # presenceは必須
  validates :user_id, {presence: true}
end
