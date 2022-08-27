# require 'rails_helper'

# RSpec.describe Post, type: :model do
#   first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
#                            post_counter: 0)

#   first_post = first_user.posts.create(author: first_user, title: 'Hello', text: 'This is my first post',
#                                        comment_counter: 0, like_counter: 0)

#   # before { subject.save }

#   it 'title should be present' do
#     first_post.title = nil
#     expect(first_post).to_not be_valid
#   end

#   it 'title should not exceed 250 char' do
#     first_post.title = 'was missing something but every time I felt
#     like I was getting closer. The point that I am  you want to
#     become better at is never a waste. At the moment I am a
#     full-time student at this method The point that I am  you want to
#     become better at is never a waste". At the moment I am a
#     full-time student at this method '
#     expect(first_post).to_not be_valid
#   end

#   it 'comment_counter should accept an integer' do
#     first_post.comment_counter = 'wrong'
#     expect(first_post).to_not be_valid
#   end

#   it 'comment_counter should be a positive integer' do
#     first_post.comment_counter = -1
#     expect(first_post).to_not be_valid
#   end

#   it 'like_counter should accept an integer' do
#     first_post.like_counter = 'wrong'
#     expect(first_post).to_not be_valid
#   end

#   it 'like_counter should be a positive integer' do
#     first_post.like_counter = -1
#     expect(first_post).to_not be_valid
#   end

#   it 'recent_comments should return 0' do
#     expect(first_post.recent_comments.length).to eq(0)
#   end

#   it 'post_counter for User should be updated' do
#     expect(first_user.post_counter).to eq(1)
#   end
# end
