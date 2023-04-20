class User < ApplicationRecord
  has_many :likes, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :posts, foreign_key: 'author_id'

  def three_recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  validates :name, presence: true
  validates :post_counter,
            numericality: { only_integer: true, greater_than_or_equal_to: 0,
                            message: 'must be an integer greater than or equal to zero' }
end
