require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    post = Post.create(title: 'Hello', text: 'This is my first post', author_id: user.id)

    Comment.new(post_id: post.id, author_id: user.id, text: 'Good improvements')
  end

  before { subject.save }

  it 'author_id should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'post_id should be present' do
    subject.post_id = nil
    expect(subject).to_not be_valid
  end

  it 'post_id should be a string' do
    subject.post_id = '11123'
    expect(subject).to_not be_valid
  end

  it 'author_id should be a string' do
    subject.author_id = '1123'
    expect(subject).to_not be_valid
  end
end
