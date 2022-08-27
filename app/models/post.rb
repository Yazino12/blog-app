class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }
  validates :like_counter, numericality: { only_integer: true }, comparison: { greater_than_or_equal_to: 0 }

  after_save :update_post_counter

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end

  private

  def update_post_counter
    author.increment!(:post_counter)
  end
end
