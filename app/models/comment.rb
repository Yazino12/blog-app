class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_save :update_comment_counter

  private

  def update_comment_counter
    author.increment!(:posts_counter)
  end
end
