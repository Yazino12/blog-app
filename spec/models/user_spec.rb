# require 'rails_helper'

# RSpec.describe User, type: :model do
#   subject { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }

#   before { subject.save }

#   it 'name should be present' do
#     subject.name = nil
#     expect(subject).to_not be_valid
#   end

#   it 'post_counter should accept an integer' do
#     subject.post_counter = 'wrong'
#     expect(subject).to_not be_valid
#   end

#   it 'post_counter should be a positive integer' do
#     subject.post_counter = -1
#     expect(subject).to_not be_valid
#   end

#   it 'recent_posts should return 0' do
#     expect(subject.recent_posts.length).to eq(0)
#   end
# end
