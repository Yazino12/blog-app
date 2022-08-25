require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    post = Post.create(title: 'Hello', text: 'This is my first post', comment_counter: 0)

    Like.new(author_id: user.id, post_id: post.id)
  end

  before { subject.save }

  it 'name should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'post_id should be a number' do
    subject.post_id = '11123'
    expect(subject).to_not be_valid
  end

  it 'author_id should be a number' do
    subject.author_id = '1123'
    expect(subject).to_not be_valid
  end
end
