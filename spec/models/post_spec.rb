require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    Post.new(title: 'Hello', text: 'This is my first post', author_id: user.id)
  end

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should not exceed 250 char' do
    subject.title = 'was missing something but every time I felt
    like I was getting closer. The point that I am  you want to
    become better at is never a waste. At the moment I am a
    full-time student at this method The point that I am  you want to
    become better at is never a waste". At the moment I am a
    full-time student at this method '
    expect(subject).to_not be_valid
  end

  it 'comment_counter should accept an integer' do
    subject.comment_counter = 'wrong'
    expect(subject).to_not be_valid
  end

  it 'comment_counter should be a positive integer' do
    subject.comment_counter = -1
    expect(subject).to_not be_valid
  end

  it 'like_counter should accept an integer' do
    subject.like_counter = 'wrong'
    expect(subject).to_not be_valid
  end

  it 'like_counter should be a positive integer' do
    subject.like_counter = -1
    expect(subject).to_not be_valid
  end

  it 'recent_comments should return 0' do
    expect(subject.recent_comments.length).to eq(0)
  end
end
