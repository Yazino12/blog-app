require "rails_helper"

RSpec.describe "User management", :type => :request do

    it "check actions for home route" do
        get "/"
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:index)
        expect(response.body).to include('ALL USERS')
    end

    it "check actions for /users/ID route" do
        get "/users/1"
        expect(response).to have_http_status(:success)
        expect(response).to render_template(:show)
        expect(response.body).to include('HERE IS A GIVEN USER BY ID')
    end
  
end