require 'rails_helper'

RSpec.describe "FlavorLikes", type: :request do
  describe "GET /flavor_likes" do
    it "works! (now write some real specs)" do
      get flavor_likes_path
      expect(response).to have_http_status(200)
    end
  end
end
