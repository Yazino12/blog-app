require 'rails_helper'

RSpec.describe 'Integration tests for User#Show', type: :feature do
  describe 'User#Show' do
    before :each do
      @first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVv',
                                 bio: 'Teacher from Mexico.', post_counter: 0)
      (1..5).each do |i|
        Post.create!(author: @first_user, title: "Post #{i}", text: 'This is my new post', comment_counter: 0,
                     like_counter: 0)
      end
      visit user_path(@first_user.id)
    end
    it 'shows the users profile picture' do
      expect(page).to have_css('img', count: 1)
    end
    it 'shows the users username' do
      expect(page).to have_content(@first_user.name)
    end
    it 'shows the number of posts of the user' do
      expect(page).to have_content("Number of posts: #{@first_user.post_counter}")
    end
    it 'shows the users bio' do
      expect(page).to have_content(@first_user.bio)
    end
    it 'shows the users first 3 posts' do
      expect(page).to have_content('Post 5')
      expect(page).to have_content('Post 4')
      expect(page).to have_content('Post 3')
    end
    it 'a button when clicked shows all users posts' do
      button = page.find('.see-all-posts')
      button.click
      @first_user.posts.each do |post|
        expect(page).to have_content(post.title)
      end
    end
    it 'shows the users posts page when post clicked' do
      page.all('.post-button').each do |button|
        button.click
        expect(page).to have_content('Add new comment')
      end
    end
    it 'a button when clicked redirects to users post index page' do
      button = page.find('.see-all-posts')
      button.click
      expect(page).to have_current_path user_posts_path(@first_user.id)
    end
  end
end
