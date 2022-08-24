require 'rails_helper'

RSpec.describe 'Integration tests for User#Index', type: :feature do
  describe 'User Home page' do
    before :each do
      @first_user = User.create!(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVv',
                                 bio: 'Teacher from Mexico.', post_counter: 0)
      @second_user = User.create!(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVv',
                                  bio: 'Teacher from Poland.', post_counter: 0)
      visit users_path
    end

    it 'shows the username of all users' do
      expect(page).to have_content('Tom')
      expect(page).to have_content('Lilly')
    end

    it 'shows the profile picture of all users' do
      expect(page).to have_css('img', count: 2)
    end

    it 'shows the number of posts of all users' do
      expect(page).to have_content("Number of posts: #{@first_user.post_counter}")
      expect(page).to have_content("Number of posts: #{@second_user.post_counter}")
    end

    it 'shows the users show page on click' do
      page.all('.button').each do |button|
        button.click
        expect(page).to have_current_path user_path(@first_user.id)
      end
    end
  end
end
