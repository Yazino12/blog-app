# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
#                            post_counter: 0)

#   first_post = first_user.posts.create(title: 'Hello', text: 'This is my first post', comment_counter: 0,
#                                        like_counter: 0)

#   first_post.comments.create(author_id: first_user.id, post_id: first_post.id, text: 'First comment added')

#   it 'comment_counter for Post should be updated' do
#     expect(first_post.comment_counter).to eq(1)
#   end
# end
