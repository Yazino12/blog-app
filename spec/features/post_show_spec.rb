# require 'rails_helper'

# RSpec.describe 'Integration tests for Post#Show', type: :feature do
#   describe 'Post#Show' do
#     before :each do
#       @first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVv',
#                                  bio: 'Teacher from Mexico.', post_counter: 0)

#       @first_post = Post.create!(author: @first_user,
# title: 'Post 1', text: 'This is my new post', comment_counter: 0,
#                                  like_counter: 0)

#       @first_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)
#       @second_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)
#       @third_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)

#       visit user_post_path(@first_post.id, @first_user.id)
#     end

#     it 'shows the posts title' do
#       expect(page).to have_content(@first_post.title)
#     end

#     it 'shows the who wrote the post' do
#       expect(page).to have_content("#{@first_post.title} by #{@first_user.name}")
#     end

#     it 'shows how many comment a post has' do
#       expect(page).to have_content("Comments: #{@first_post.comment_counter}")
#     end

#     it 'shows how many likes a post has' do
#       expect(page).to have_content("Likes: #{@first_post.like_counter}")
#     end

#     it 'shows post body' do
#       expect(page).to have_content(@first_post.text)
#     end

#     it 'shows the username of each commentor' do
#       @first_post.comments.each do |comment|
#         expect(page).to have_content("#{comment.author.name}:")
#       end
#     end

#     it 'shows the comment each commentor left' do
#       @first_post.comments.each do |comment|
#         expect(page).to have_content("#{comment.author.name}: #{comment.text}")
#       end
#     end
#   end
# end
