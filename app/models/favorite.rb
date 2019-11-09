class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :posts

  validates :user, presence: true
  validates :user_id, uniqueness: { scope: :post_id }
  validates :post, presence: true
end
