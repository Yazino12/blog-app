require 'rails_helper'

RSpec.describe 'Post management', type: :request do
  it 'check actions for home route' do
    get '/users/1/posts'
    expect(response).to have_http_status(:success)
    expect(response).to render_template(:index)
    expect(response.body).to include('HERE ARE ALL POSTS FOR A GIVEN USER')
  end

  it 'check actions for /users/ID route' do
    get '/users/1/posts/3'
    expect(response).to have_http_status(:success)
    expect(response).to render_template(:show)
    expect(response.body).to include('HERE IS A POST BY ID FOR A GIVEN USER')
  end
end
