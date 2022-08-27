# require 'rails_helper'

# RSpec.describe 'Integration tests for Post#Index', type: :feature do
#   describe 'Post Home page' do
#     before :each do
#       @first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVv',
#                                  bio: 'Teacher from Mexico.', post_counter: 0)

#       @first_post = Post.create!(author: @first_user, title: 'Post 1',
# text: 'This is my new post', comment_counter: 0,
#                                  like_counter: 0)
#       @second_post = Post.create!(author: @first_user, title: 'Post 2',
# text: 'This is my new post',
#                                   comment_counter: 0, like_counter: 0)
#       @third_post = Post.create!(author: @first_user, title: 'Post 3',
# text: 'This is my new post', comment_counter: 0,
#                                  like_counter: 0)

#       @first_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)
#       @second_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)
#       @third_comment = Comment.create!(text: 'Good job!', author: @first_user, post: @first_post)

#       visit user_posts_path(@first_user.id)
#     end

#     it 'shows the users profile picture' do
#       expect(page).to have_css('img', count: 1)
#     end

#     it 'shows the users username' do
#       expect(page).to have_content(@first_user.name)
#     end

#     it 'shows the number of posts of the user' do
#       expect(page).to have_content("Number of posts: #{@first_user.post_counter}")
#     end

#     it 'shows the posts title' do
#       @first_user.posts.each do |post|
#         expect(page).to have_content(post.title)
#         expect(page).to have_content(post.title)
#         expect(page).to have_content(post.title)
#       end
#     end

#     it 'shows the posts body' do
#       @first_user.posts.each do |post|
#         expect(page).to have_content(post.text)
#         expect(page).to have_content(post.text)
#         expect(page).to have_content(post.text)
#       end
#     end

#     it 'shows first comments on a post' do
#       expect(page).to have_content(@first_comment.text)
#       expect(page).to have_content(@second_comment.text)
#       expect(page).to have_content(@third_comment.text)
#     end

#     it 'shows how many comment a post has' do
#       @first_user.posts.each do |post|
#         expect(page).to have_content("Comments: #{post.comment_counter}")
#       end
#     end

#     it 'shows how many likes a post has' do
#       @first_user.posts.each do |post|
#         expect(page).to have_content("Likes: #{post.like_counter}")
#       end
#     end

#     it 'shows the add new post at the end of the page' do
#       expect(page).to have_content('Add new post')
#     end

#     it 'shows the users posts page when post clicked' do
#       page.all('.post-button').each do |button|
#         button.click
#         expect(page).to have_content('Add new comment')
#       end
#     end
#   end
# end
