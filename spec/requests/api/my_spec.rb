require 'swagger_helper'

RSpec.describe 'api/my', type: :request do
  describe 'Users API' do
    path '/api/users/{id}/posts' do
      get 'Retrieves all posts for a user' do
        tags 'posts'
        produces 'application/json'
        parameter name: :id, in: :path, type: :string

        response '200', 'posts found' do
          schema type: :object,
                 properties: {
                   id: { type: :integer },
                   author_id: { type: :integer },
                   title: { type: :string },
                   text: { type: :text }
                 },
                 required: %w[author_id title text]

          let(:id) { Post.create(author_id: properties.author_id, title: 'hello', text: 'a post').id }
          run_test!
        end

        response '404', 'post not found' do
          let(:id) { 'invalid' }
          run_test!
        end
      end
    end
  end
end
