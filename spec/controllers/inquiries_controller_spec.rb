require 'rails_helper'

RSpec.describe InquiriesController, type: :controller do
  describe "GET #index" do
    it 'responds with a HTTP 200 status code' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'loads all posts' do
      user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
      inquiry1, inquiry2 = Inquiry.create!(user: user), Inquiry.create!(user: user)
      get :index
      expect(assigns(:inquiries)).to match_array([inquiry1, inquiry2])
    end
  end
end
